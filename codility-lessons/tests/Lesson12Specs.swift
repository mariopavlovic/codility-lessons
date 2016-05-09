import Quick
import Nimble

class Lesson12Specs: QuickSpec {
    override func spec() {
        var sut: Lesson12!
        
        beforeEach {
            sut = Lesson12()
        }
        
        fdescribe("Given L12") {
            describe("when solving problem of number of chocolates eaten", {
                context("for small predictable input", {
                    it("should calculate correctly", closure: {
                        expect(sut.numChocolatesEaten(10, M: 4)).to(equal(5))
                        expect(sut.numChocolatesEaten(11, M: 3)).to(equal(11))
                    })
                })
                
                context("for small unpredictable input", {
                    it("should calculate correctly", closure: {
                        expect(sut.numChocolatesEaten(1, M: 1)).to(equal(1))
                        expect(sut.numChocolatesEaten(2, M: 3)).to(equal(2))
                    })
                })

            })
        }
    }
}
