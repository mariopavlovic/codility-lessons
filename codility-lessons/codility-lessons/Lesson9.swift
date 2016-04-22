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
    
    public func findMaxSlice(A : [Int]) -> Int {
        var last = 0
        let summedInput = A.map { (input) -> Int in
            last += input
            
            if last < 0 {
                last = 0
            }
            
            return last
        }
        
        var max = summedInput.maxElement() ?? 0
        if max == 0 {
            max = A.maxElement() ?? 0
        }
        
        return max
    }
}
