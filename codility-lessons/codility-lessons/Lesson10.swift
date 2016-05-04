import Foundation

public class Lesson10 {
    
    public func minPerimeter(N: Int) -> Int {
        let sqrtN = Int(floor(sqrt(Double(N))))
        var min = Int.max
        
        for i in 1 ... sqrtN {
            if N % i == 0 {
                let A = N / i
                let B = N / A
                min = Swift.min(2 * (A + B), min)
            }
        }
        
        return min
    }
}