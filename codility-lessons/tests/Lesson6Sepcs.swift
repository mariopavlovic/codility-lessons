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
        
        describe("Given lesson 6 - numDistinctValues") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.numDistinctValues([1, 2, 3])).toNot(beNil())
                })
            })
            
            context("when looking for a number of distinct values", {
                it("should do it correctly for small predictable input", closure: {
                    let input = [2, 1, 1, 2, 3, 1]
                    expect(sut.numDistinctValues(input)).to(equal(3))
                })
                
                it("should do it correctly for small unpredictable input", closure: {
                    expect(sut.numDistinctValues([])).to(equal(0))
                })
            })
        }
        
        describe("Given lesson 6 - maxTripletValue") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.maxTripletValue([1, 2, 3])).toNot(beNil())
                })
            })
            
            context("when looking for a max triplet value", {
                it("should do it correctly for small predictable input", closure: {
                    let input = [-3, 1, 2, -2, 5, 6]
                    expect(sut.maxTripletValue(input)).to(equal(60))
                })
                
                it("should do it correctly for small unpredictable input", closure: {
                    let input = [-10, -10, 1, 2, 3, 4, 5]
                    expect(sut.maxTripletValue(input)).to(equal(500))
                })
            })
        }
        
        describe("Given lesson 6 - numIntersectingDiscs") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.numIntersectingDiscs([1, 2, 3])).toNot(beNil())
                })
            })
            
            context("when detecting intersections", {
                it("should do it correctly for small predictable input", closure: {
                    let input = [1, 5, 2, 1, 4, 0]
                    expect(sut.numIntersectingDiscs(input)).to(equal(11))
                })
            })
        }
    }
}
