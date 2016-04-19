import Quick
import Nimble

class Lesson6Sepcs: QuickSpec {
    override func spec() {
        var sut: Lesson6!
        
        beforeEach {
            sut = Lesson6()
        }
        
        describe("Given lesson 6 - isTriangularTriplet") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.isTriangularTriplet([1, 2, 3])).toNot(beNil())
                })
            })
            
            context("when looking for a triangular triplet", { 
                it("should do it correctly for small predictable input", closure: { 
                    let input = [10, 2, 5, 1, 8, 20]
                    expect(sut.isTriangularTriplet(input)).to(equal(1))
                    
                    let input2 = [1, 2, 3]
                    expect(sut.isTriangularTriplet(input2)).to(equal(0))
                })
                
                it("should do it correctly for small unpredictable input", closure: {
                    expect(sut.isTriangularTriplet([])).to(equal(0))
                    expect(sut.isTriangularTriplet([1])).to(equal(0))
                    expect(sut.isTriangularTriplet([1, 2])).to(equal(0))
                })
                
                it("should do it correctly for small input containing negatives", closure: {
                    expect(sut.isTriangularTriplet([-1, -2, -5])).to(equal(0))
                })
            })
        }
    }
}
