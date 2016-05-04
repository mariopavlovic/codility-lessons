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
        
        describe("Given lesson 10 - numFactors") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.numFactors(4)).toNot(beNil())
                })
            })
            
            context("when calculating number of factors", { 
                it("should calculate correctly for small predictable input", closure: { 
                    expect(sut.numFactors(24)).to(equal(8))
                    expect(sut.numFactors(16)).to(equal(5))
                })
                
                it("should calculate correctly for small unpredictable input", closure: {
                    expect(sut.numFactors(1)).to(equal(1))
                    expect(sut.numFactors(2)).to(equal(2))
                    expect(sut.numFactors(3)).to(equal(2))
                    expect(sut.numFactors(9)).to(equal(3))
                })

            })
        }
        
        fdescribe("Given lesson 10 - numPeakGroups") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.numPeakGroups([1])).toNot(beNil())
                })
            })
            
            context("when counting number of peak groups", {
                it("should calculate correctly for small predictable input", closure: {
                    let input = [1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
                    expect(sut.numPeakGroups(input)).to(equal(3))
                    
                    expect(sut.numPeakGroups([1, 3, 1, 1, 1, 1])).to(equal(1))
                })
                
                it("should calculate correctly for small unpredictable input", closure: {
                    let input = [1, 3, 1]
                    expect(sut.numPeakGroups(input)).to(equal(1))
                    
                })

            })
        }
    }
}
