import Foundation

public class Lesson9 {
    public func maxProfit(A: [Int]) -> Int {
        guard A.count > 0  else {
            return 0
        }
        
        var profit = 0
        var lowest = A[0]
        
        for value in A {
            lowest = min(lowest, value)
            profit = max(profit, value - lowest)
        }
        
        return profit
    }
}
