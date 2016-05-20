import Quick
import Nimble

class Lesson15Specs: QuickSpec {
    override func spec() {
        var sut: Lesson15!
        
        beforeEach {
            sut = Lesson15()
        }
        
        describe("Given L15") {
            describe("when counting absolute discrete elements", { 
                it("should count correctly for small predictable input", closure: {
                    let input = [-5, -3, -1, 0, 3, 6]
                    expect(sut.numAbsoluteDiscreteElements(input)).to(equal(5))
                    expect(sut.numAbsoluteDiscreteElements([0, 0, 0,])).to(equal(1))
                })
                
                it("should count correctly for small unpredictable input", closure: {
                    expect(sut.numAbsoluteDiscreteElements([])).to(equal(0))
                    expect(sut.numAbsoluteDiscreteElements([-1, 1])).to(equal(1))
                })

            })
        }
    }
}
