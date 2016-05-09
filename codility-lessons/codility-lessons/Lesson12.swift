import Foundation

public class Lesson12 {
    public func numChocolatesEaten(N: Int, M: Int) -> Int {
        var chocolates = Array(count: N, repeatedValue: true)
        var step = 0
        var count = 0
        
        while chocolates[step] {
            chocolates[step] = false
            count += 1
            step = (step + M) % N
        }
        
        return count
    }
}