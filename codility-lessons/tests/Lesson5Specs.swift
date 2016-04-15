import Quick
import Nimble

class Lesson5Specs: QuickSpec {
    override func spec() {
        var sut: Lesson5!
        
        beforeEach {
            sut = Lesson5()
        }
        
        describe("Given lesson 5 - countPassingCars") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.countPassingCars([1])).toNot(beNil())
                })
            })
            
            context("when calculating number of passing cars", { 
                it("should return correct value for small predictible input", closure: {
                    let input = [0, 1, 0, 1, 1]
                    expect(sut.countPassingCars(input)).to(equal(5))
                    
                    let input2 = [0, 1, 0, 1, 1, 0, 1, 1, 0]
                    expect(sut.countPassingCars(input2)).to(equal(11))
                })
                
                it("should return correct value for small unpredictible input", closure: {
                    let input2 = [0]
                    expect(sut.countPassingCars(input2)).to(equal(0))
                    
                    let input3 = [0, 1]
                    expect(sut.countPassingCars(input3)).to(equal(1))

                    let input4 = [1, 0]
                    expect(sut.countPassingCars(input4)).to(equal(0))
                })
                
                it("should return correct value for edge cases", closure: { 
                    let input = [1, 1, 1, 1, 1]
                    expect(sut.countPassingCars(input)).to(equal(0))
                    
                    let input2 = [0, 0, 0, 0, 0]
                    expect(sut.countPassingCars(input2)).to(equal(0))
                })
                
                it("should return correct value for large input", closure: {
                    let input = Array(count: 1000000, repeatedValue: 1)
                    expect(sut.countPassingCars(input)).to(equal(0))
                })
            })
        }
        
        describe("Given lesson 5 - countDivisible") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.countDivisible(1, 3, 2)).toNot(beNil())
                })
            })
            
            context("when calculating number of dividable elements", { 
                it("should return correct value for small predictible input", closure: { 
                    expect(sut.countDivisible(6, 11, 2)).to(equal(3))
                    expect(sut.countDivisible(6, 12, 2)).to(equal(4))
                    expect(sut.countDivisible(1, 9, 2)).to(equal(4))
                    expect(sut.countDivisible(2, 4, 2)).to(equal(2))
                    expect(sut.countDivisible(0, 2, 2)).to(equal(2))
                })
                
                it("should return correct value for small unpredictible input", closure: {
                    expect(sut.countDivisible(21, 23, 9)).to(equal(0))
                    expect(sut.countDivisible(7, 7, 7)).to(equal(1))
                    expect(sut.countDivisible(3, 6, 7)).to(equal(0))
                    expect(sut.countDivisible(0, 0, 2)).to(equal(1))
                })
            })
        }
    }
}
