import Quick
import Nimble

class Lesson11Specs: QuickSpec {
    override func spec() {
        var sut: Lesson11!
        
        beforeEach { 
            sut = Lesson11()
        }
        
        fdescribe("Given L11") {
            describe("when solving problem numSemiprimes", {
                context("for small predictible input", { 
                    it("should calculate correctly", closure: { 
                        let P = [1, 4, 16]
                        let Q = [26, 10, 20]
                        expect(sut.numSemiprimes(26, P: P, Q: Q)).to(equal([10, 4, 0]))
                    })
                })
                
                context("for small unpredictible input", {
                    it("should calculate correctly", closure: {
                        let P = [1, 2]
                        let Q = [3, 2]
                        expect(sut.numSemiprimes(3, P: P, Q: Q)).to(equal([0, 0]))
                        
                        let P2 = [2]
                        let Q2 = [5]
                        expect(sut.numSemiprimes(5, P: P2, Q: Q2)).to(equal([1]))
                        
                        let P3 = [1]
                        let Q3 = [1]
                        expect(sut.numSemiprimes(1, P: P3, Q: Q3)).to(equal([0]))
                    })
                })
            })
        }
    }
}
