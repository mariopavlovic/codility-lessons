import Quick
import Nimble

class Lesson2Specs: QuickSpec {
    override func spec() {
        var sut: Lesson2!
        
        beforeEach { 
            sut = Lesson2()
        }
        
        describe("Given lesson 2 (A task)") {
            let inputArray = [3, 8, 9, 7, 6]

            context("when loaded", {
                it("should implement solution", closure: {
                    var input = inputArray
                    let result = sut.solutionA(&input, 0)
                    expect(result).toNot(beNil())
                })
            })
            
            context("when testing rotation", { 
                it("should rotate for normal input", closure: {
                    let K = 3
                    var A = inputArray
                    let result = sut.solutionA(&A, K)
                    
                    expect(result).to(equal([9, 7, 6, 3, 8]))
                })
                
                it("should rotate for input higher than array size", closure: {
                    let K = 6
                    var A = inputArray
                    let result = sut.solutionA(&A, K)
                    
                    expect(result).to(equal([6, 3, 8, 9, 7]))
                })

                it("should rotate for 0 input", closure: {
                    let K = 0
                    var A = inputArray
                    let result = sut.solutionA(&A, K)
                    
                    expect(result).to(equal(inputArray))
                })

                it("should rotate for input same as input size", closure: {
                    let K = inputArray.count
                    var A = inputArray
                    let result = sut.solutionA(&A, K)
                    
                    expect(result).to(equal(inputArray))
                })

                it("should rotate for empty array", closure: {
                    let K = 3
                    var A = Array(count: 0, repeatedValue: 0)
                    let result = sut.solutionA(&A, K)
                    
                    expect(result).to(equal(A))
                })
                
                it("should rotate for empty array", closure: {
                    let K = 3
                    var A = Array(count: 0, repeatedValue: 0)
                    let result = sut.solutionA(&A, K)
                    
                    expect(result).to(equal(A))
                })
                
                it("should rotate for input with same elements", closure: {
                    let K = 6
                    var A = [1, 2, 3, 1, 3]
                    let result = sut.solutionA(&A, K)
                    
                    expect(result).to(equal([3, 1, 2, 3, 1]))
                })

            })
        }
        
        describe("Given lesson 2 (B task)") {
            let inputArray = [9, 3, 9, 3, 9, 7, 9]

            context("when loaded", {
                it("should implement solution", closure: {
                    var input = inputArray
                    let result = sut.solutionB(&input)
                    expect(result).toNot(beNil())
                })
            })
            
            context("when finding the one without a pair", { 
                it("should return 7 for test input case", closure: {
                    var input = inputArray
                    let result = sut.solutionB(&input)
                    expect(result).to(equal(7))
                })
            })
        }
    }
}