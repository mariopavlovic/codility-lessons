import Foundation

public class Lesson2 {
    public func solutionA(inout A : [Int], _ K : Int) -> [Int] {
        //sanitize
        if A.count <= 0 { return [] }
        let rotation = K % A.count
        
        //for current position return element that is on -K (rotation) position
        let resultArray = A.enumerate().map { (index: Int, element: Int) -> Int in
            let rotatedIndex = index - rotation
            let sanitizedRotatedIndex = rotatedIndex < 0 ? A.count + rotatedIndex : rotatedIndex
            
            return A[sanitizedRotatedIndex]
        }
        
        return resultArray
    }
}