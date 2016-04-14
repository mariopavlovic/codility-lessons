import Quick
import Nimble

class Lesson4Specs: QuickSpec {
    override func spec() {
        var sut: Lesson4!
        
        beforeEach {
            sut = Lesson4()
        }
        
        describe("Given lesson 4 - secondInWhichFrogCanCross") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.secondInWhichFrogCanCross(1, [1])).toNot(beNil())
                })
            })
            
            context("when frog jumps around", { 
                it("should take 6 sec to satisfy Codility input", closure: { 
                    let input = [1, 3, 1, 4, 2, 3, 5, 4]
                    let result = sut.secondInWhichFrogCanCross(5, input)
                    expect(result).to(equal(6))
                })
                
                it("should return correct value for small inputs", closure: {
                    let result = sut.secondInWhichFrogCanCross(2, [1, 2])
                    expect(result).to(equal(1))
                    
                    let result2 = sut.secondInWhichFrogCanCross(1, [1])
                    expect(result2).to(equal(0))
                })
                
                it("should return -1 when it can't find a path", closure: { 
                    let result = sut.secondInWhichFrogCanCross(5, [1, 2, 3, 4])
                    expect(result).to(equal(-1))
                    
                    let result2 = sut.secondInWhichFrogCanCross(5, [1])
                    expect(result2).to(equal(-1))
                })
            })
        }
        
        describe("Given lesson 4 - isPermutation") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.isPermutation([1])).toNot(beNil())
                })
            })
            
            context("when determining if input is permutation", { 
                it("shoudl work for small predictable input", closure: {
                    let input1 = [4, 1, 3, 2]
                    expect(sut.isPermutation(input1)).to(equal(1))
                    
                    let input2 = [4, 1, 3]
                    expect(sut.isPermutation(input2)).to(equal(0))
                })
                
                it("should work for small unpredictable input", closure: {
                    let input1 = [4]
                    expect(sut.isPermutation(input1)).to(equal(0))
                    
                    let input2 = [1]
                    expect(sut.isPermutation(input2)).to(equal(1))
                })
                
                it("should work for small unpredictable input", closure: {
                    let input1 = [4]
                    expect(sut.isPermutation(input1)).to(equal(0))
                    
                    let input2 = [1]
                    expect(sut.isPermutation(input2)).to(equal(1))
                    
                    let input3 = [1, 2, 3, 4, 5, 5]
                    expect(sut.isPermutation(input3)).to(equal(0))
                    
                    let input4 = [1, 1]
                    expect(sut.isPermutation(input4)).to(equal(0))
                })
            })
        }
        
        describe("Given lesson 4 - minimalMissingInt") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.minimalMissingInt([1])).toNot(beNil())
                })
            })
            
            context("when finding minimal missing int", {
                it("should work for small predictable input", closure: {
                    let input = [1, 3, 6, 4, 1, 2]
                    expect(sut.minimalMissingInt(input)).to(equal(5))
                })
                
                it("should work for small unpredictable input", closure: {
                    let input = [1, 2, 3, 4]
                    expect(sut.minimalMissingInt(input)).to(equal(5))
                    
                    let input2 = [1]
                    expect(sut.minimalMissingInt(input2)).to(equal(2))

                    let input3 = [0]
                    expect(sut.minimalMissingInt(input3)).to(equal(1))
                    
                    let input4 = [1, 1, 1, 1, 1, 1, 1]
                    expect(sut.minimalMissingInt(input4)).to(equal(2))
                })
                
                it("should work for large inputs", closure: {
                    let input = Array(count: 10000, repeatedValue: 1)
                    expect(sut.minimalMissingInt(input)).to(equal(2))
                })
            })
        }
    }
}