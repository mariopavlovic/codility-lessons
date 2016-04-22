import Quick
import Nimble

class Lesson9Specs: QuickSpec {
    override func spec() {
        var sut: Lesson9!
        
        beforeEach {
            sut = Lesson9()
        }
        
        fdescribe("Given lesson 9 - maxProfit") {
            context("when loaded", {
                it("should implemenet solution", closure: {
                    expect(sut.maxProfit([1, 2, 3])).toNot(beNil())
                })
            })
            
            context("when calculating max profit", {
                it("should find correct solution for small predictable input", closure: {
                    let input = [23171, 21011, 21123, 21366, 21013, 21367]
                    expect(sut.maxProfit(input)).to(equal(356))
                    
                    let input2 = [100, 50, 40, 20]
                    expect(sut.maxProfit(input2)).to(equal(0))
                    
                    let input3 = [100, 130, 99, 100, 101]
                    expect(sut.maxProfit(input3)).to(equal(30))
                })
                
                it("should find correct solution for small unpredictable input", closure: {
                    let input = [80, 90, 100, 10, 90, -10, 30]
                    expect(sut.maxProfit(input)).to(equal(80))
                })

            })

        }
    }
}
