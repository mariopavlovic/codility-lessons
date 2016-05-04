import Quick
import Nimble

class Lesson10Specs: QuickSpec {
    override func spec() {
        var sut: Lesson10!
        
        beforeEach {
            sut = Lesson10()
        }
        
        describe("Given lesson 10 - minPerimeter") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.minPerimeter(4)).toNot(beNil())
                })
            })
            
            context("when calculating min perimeter", { 
                it("should calculate correctly for small predictable input", closure: {
                    expect(sut.minPerimeter(30)).to(equal(22))
                })
                
                it("should calculate correctly for small unpredictable input", closure: {
                    expect(sut.minPerimeter(4)).to(equal(8))
                    expect(sut.minPerimeter(1)).to(equal(4))
                })
            })
        }
    }
}
