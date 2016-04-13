import Quick
import Nimble

class Lesson3Specs: QuickSpec {
    override func spec() {
        var sut: Lesson3!
        
        beforeEach { 
            sut = Lesson3()
        }
        
        describe("Given lesson 3 - SolutionA") {
            context("when loaded", { 
                it("should implemenet solution", closure: { 
                    let result = sut.solutionA(1, 1, 1)
                    expect(result).toNot(beNil())
                })
            })
            
            context("when calculating jump", { 
                it("should calculate correct jump for case X < Y and D < Y - X", closure: {
                    expect(sut.solutionA(1, 41, 19)).to(equal(3))
                    expect(sut.solutionA(10, 85, 30)).to(equal(3))
                })
                
                it("should return 0 jumps if X = Y indepenedant of D", closure: { 
                    expect(sut.solutionA(1, 1, 1)).to(equal(0))
                    expect(sut.solutionA(10, 10, 100)).to(equal(0))
                })
                
                it("should return 1 jumps if D > Y - X", closure: {
                    expect(sut.solutionA(1, 2, 10)).to(equal(1))
                    expect(sut.solutionA(10, 20, 100)).to(equal(1))
                })
            })
        }
        
        
        describe("Given lesson 3 - SolutionB") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    let result = sut.solutionB([])
                    expect(result).toNot(beNil())
                })
            })
            
            context("when calculating sliced differences", { 
                it("should calculate correctly for codility example", closure: {
                    let result = sut.solutionB([3, 1, 2, 4, 3])
                    expect(result).to(equal(1))
                })
                
                it("should calculate correctly for small sample", closure: {
                    expect(sut.solutionB([7, 2])).to(equal(5))
                    expect(sut.solutionB([-7, 2])).to(equal(9))
                })
                
                /*!
                 *  @brief Failing, code is too slow
                 */
                it("should calculate correctly and fast for large samples", closure: {
                    let input = Array(count: 10000, repeatedValue: 1)
                    let start = NSDate.init(timeIntervalSinceNow: 0)
                    let result = sut.solutionB(input)
                    let end = NSDate.init(timeIntervalSinceNow: 0)
                
                    expect(result).to(equal(0))
                    expect(end.timeIntervalSinceDate(start)).to(beLessThan(10))
                })
            })
        }
    }
}
