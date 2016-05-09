import Quick
import Nimble

class Lesson13Sepcs: QuickSpec {
    override func spec() {
        var sut: Lesson13!
        
        beforeEach {
            sut = Lesson13()
        }
        
        describe("Given L13") {
            describe("when solving problem of min number of jumps", {
                context("for small predictable input", {
                    it("should calculate correctly", closure: {
                        let input = [0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0]
                        expect(sut.minNumberOfJumps(input)).to(equal(3))
                    })
                })
            })
        }
    }
}
