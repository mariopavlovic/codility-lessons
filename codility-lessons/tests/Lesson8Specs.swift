import Quick
import Nimble

class Lesson8Specs: QuickSpec {
    override func spec() {
        var sut: Lesson8!
        
        beforeEach { 
            sut = Lesson8()
        }
        
        describe("Given lesson 8 - numEquiLeader") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.numEquiLeader([1, 2, 3])).toNot(beNil())
                })
            })
            
            context("when counting equi leaders", {
                it("should count correctly for small predictable input", closure: {
                    let input = [4, 3, 4, 4, 4, 2]
                    expect(sut.numEquiLeader(input)).to(equal(2))
                    
                    let input2 = [4, 4]
                    expect(sut.numEquiLeader(input2)).to(equal(1))
                })
                
                it("should count correctly for small unredictable input", closure: {
                    expect(sut.numEquiLeader([])).to(equal(0))
                })

            })

        }
    }
}
