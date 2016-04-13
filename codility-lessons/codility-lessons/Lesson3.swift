import Foundation

public class Lesson3 {
    public func solutionA(X : Int, _ Y : Int, _ D : Int) -> Int {
        guard X > 0 && Y > 0 && D > 0 else {
            return 0
        }
        
        return Int(ceil(Double(Y - X) / Double(D)))
    }
}