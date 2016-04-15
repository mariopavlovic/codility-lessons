import Quick
import Nimble

class Lesson5Specs: QuickSpec {
    override func spec() {
        var sut: Lesson5!
        
        beforeEach {
            sut = Lesson5()
        }
        
        fdescribe("Given lesson 5 - countPassingCars") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.countPassingCars([1])).toNot(beNil())
                })
            })
            
            context("when calculating number of passing cars", { 
                it("should return corerct value for small predictible input", closure: { 
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
    }
}
