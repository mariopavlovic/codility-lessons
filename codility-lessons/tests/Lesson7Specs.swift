import Quick
import Nimble

class Lesson7Specs: QuickSpec {
    override func spec() {
        var sut: Lesson7!
        
        beforeEach { 
            sut = Lesson7()
        }
        
        describe("Given lesson 7 - numSurvivedFishes") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.numSurvivedFishes([1, 2, 3], [0, 0, 0])).toNot(beNil())
                })
            })
            
            context("when counting survived fishes", {
                it("should calculate correctly for small predictable input", closure: {
                    let A = [4, 3, 2, 1, 5]
                    let B = [0, 1, 0, 0, 0]
                    expect(sut.numSurvivedFishes(A, B)).to(equal(2))
                    
                    let A2 = [2, 1]
                    let B2 = [1, 0]
                    expect(sut.numSurvivedFishes(A2, B2)).to(equal(1))
                    
                    let A3 = [1, 2, 3, 4, 5, 6, 7]
                    let B3 = [1, 0, 1, 0, 1, 0, 1]
                    expect(sut.numSurvivedFishes(A3, B3)).to(equal(4))
                    
                    let A4 = [8, 6, 5, 3, 2, 4, 7]
                    let B4 = [1, 1, 1, 1, 1, 0, 0]
                    expect(sut.numSurvivedFishes(A4, B4)).to(equal(1))
                    
                    let A5 = [999, 1000]
                    let B5 = [1, 0]
                    expect(sut.numSurvivedFishes(A5, B5)).to(equal(1))
                })
                
                it("should calculate correctly for small unpredictable input", closure: {
                    let A = [4, 3, 2, 1, 5]
                    let B = [0, 0, 0, 0, 0]
                    expect(sut.numSurvivedFishes(A, B)).to(equal(5))
                    
                    let A2 = [1]
                    let B2 = [0]
                    expect(sut.numSurvivedFishes(A2, B2)).to(equal(1))
                    
                    let A3 = [4, 3, 2, 1, 5]
                    let B3 = [0, 0, 0, 0, 1]
                    expect(sut.numSurvivedFishes(A3, B3)).to(equal(5))
                })

            })
        }
        
        describe("Given lesson 7 - isProperlyNested") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.isProperlyNested("")).toNot(beNil())
                })
            })
            
            context("when checkinf if string is properly nested", { 
                it("should return correct results for small predictible input", closure: { 
                    expect(sut.isProperlyNested("{[()()]}")).to(equal(1))
                    expect(sut.isProperlyNested("{[()()]}{[()()]}")).to(equal(1))
                    expect(sut.isProperlyNested("([)()]")).to(equal(0))
                })
                
                it("should return correct results for small unpredictible input", closure: {
                    expect(sut.isProperlyNested("")).to(equal(1))
                    expect(sut.isProperlyNested("{")).to(equal(0))
                    expect(sut.isProperlyNested("())")).to(equal(0))
                })

            })
        }
        
        describe("Given lesson 7 - minimalNumberOfBlocks") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.minimalNumberOfBlocks([0])).toNot(beNil())
                })
            })
            
            context("when calculating minimal number of blocks", {
                it("should return correct result for small predictible input", closure: {
                    let input = [8, 8, 5, 7, 9, 8, 7, 4, 8]
                    expect(sut.minimalNumberOfBlocks(input)).to(equal(7))
                })
            })

        }
        
        describe("Given lesson 7 - isProperlyNested2") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.isProperlyNested2("")).toNot(beNil())
                })
            })
            
            context("when checking if string is properly nested", {
                it("should return correct result for small predictible input", closure: {
                    expect(sut.isProperlyNested2("()")).to(equal(1))
                    expect(sut.isProperlyNested2("())")).to(equal(0))
                    expect(sut.isProperlyNested2("(()(())())")).to(equal(1))
                    expect(sut.isProperlyNested2("")).to(equal(1))
                })
            })
            
        }

    }
}