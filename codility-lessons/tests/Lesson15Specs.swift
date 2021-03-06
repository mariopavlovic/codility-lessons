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
            
            describe("when counting distinct slices", {
                it("should count correctly for small predictable input", closure: {
                    let input = [3, 4, 5, 5, 2]
                    expect(sut.numDistinctSlices(6, A: input)).to(equal(9))
                })
                
                it("should count correctly for small unpredictable input", closure: {
                    expect(sut.numDistinctSlices(6, A: [1, 2])).to(equal(3))
                    expect(sut.numDistinctSlices(6, A: [1])).to(equal(1))
                })
            })

            describe("when counting triangles", {
                it("should count correctly for small predictable input", closure: {
                    let input = [10, 2, 5, 1, 8, 12]
                    expect(sut.countTriangles(input)).to(equal(4))
                })
            })
        }
    }
}
