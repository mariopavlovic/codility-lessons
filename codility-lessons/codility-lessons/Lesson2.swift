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
    
    public func solutionB(inout A : [Int]) -> Int {
        //count elements
        var counter = [Int: Int]()
        A.forEach {
            if let value = counter[$0] {
                counter[$0] = value + 1
            } else {
                counter[$0] = 1
            }
        }
        
        //find first with no pair (odd value)
        var result = -1
        counter.forEach {
            if $0.1 % 2 == 1 {
                result = $0.0
            }
        }
        
        return result
    }

}