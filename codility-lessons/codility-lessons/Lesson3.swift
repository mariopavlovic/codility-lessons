import Foundation

public class Lesson3 {
    public func solutionA(X : Int, _ Y : Int, _ D : Int) -> Int {
        guard X > 0 && Y > 0 && D > 0 else {
            return 0
        }
        
        return Int(ceil(Double(Y - X) / Double(D)))
    }
    
    public func solutionB(A : [Int]) -> Int {
        guard A.count > 0 else { return 0 }
        
        let sum = A.reduce(0, combine: +)
        var min = Int.max
        
        for index in 0 ..< A.count - 1 {
            let sumFirstPart = A[0...index].reduce(0, combine: +)
            let sumSecondPart = sum - sumFirstPart
            let absoluteDiff = abs(sumFirstPart - sumSecondPart)
            
            if  absoluteDiff < min {
                min = absoluteDiff
            }
        }

        return min
    }
}