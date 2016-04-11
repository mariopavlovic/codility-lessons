import Nimble
import Quick

class Lesson1Specs: QuickSpec {
    override func spec() {
        var sut: Lesson1!
        
        beforeEach { 
            sut = Lesson1()
        }
        
        describe("Given lesson 1") { 
            context("when loaded", { 
                it("should implement solution", closure: { 
                    let result = sut.solution(0)
                    expect(result).to(beGreaterThanOrEqualTo(0))
                })
            })
            
            context("when testing binary gap", {
                it("should output 2 for input 9", closure: { 
                    let result = sut.solution(9)
                    expect(result).to(equal(2))
                })
                
                it("should output 4 for input 529", closure: {
                    let result = sut.solution(529)
                    expect(result).to(equal(4))
                })
                
                it("should output 1 for input 20", closure: {
                    let result = sut.solution(20)
                    expect(result).to(equal(1))
                })
                
                it("should output 0 for input 15", closure: {
                    let result = sut.solution(15)
                    expect(result).to(equal(0))
                })
            })
        }
    }
}
