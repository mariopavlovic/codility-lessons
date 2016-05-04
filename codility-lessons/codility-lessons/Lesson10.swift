import Foundation

public class Lesson10 {
    
    public func minPerimeter(N: Int) -> Int {
        let sqrtN = wholeSqrt(N)
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
    
    public func numFactors(N: Int) -> Int {
        let sqrtN = wholeSqrt(N)
        var count = 0
        
        for i in 1 ... sqrtN {
            if N % i == 0 {
                count += 1
            }
        }
        
        //check if N is a perfect sqrt (so we don't count twice)
        if sqrt(Double(N)) == Double(sqrtN) {
            count = (count * 2) - 1
        } else {
            count *= 2
        }
        
        return count
    }
}


extension Lesson10 {
    func wholeSqrt(N: Int) -> Int {
        return Int(floor(sqrt(Double(N))))
    }
}