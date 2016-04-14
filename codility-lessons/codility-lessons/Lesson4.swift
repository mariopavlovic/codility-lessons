import Foundation

public class Lesson4 {
    /*!
     Returns the earliest second in which frog can jump from start (0)
     to end (X)
     
     - parameter X: destination (range [1.. 100,000]
     - parameter A: leaves on the river, index = second, value = coordinate
     (range of values [1..100,000])
     
     - returns: second in which frog can reach X, or -1 if not able
     */
    public func secondInWhichFrogCanCross(X : Int, _ A : [Int]) -> Int {
        var steps = Array(count: X, repeatedValue: false)
        
        for (index, value) in A.enumerate() {
            //check if value is at location that's relevant
            if value <= X {
                //-1 becuase it's zero-based index
                //and input is 1 based
                steps[value - 1] = true
            }
            
            //we don't need to check until at least X elements  are counted
            if (index + 1 >= X) {
                //if we have leaves at all places, return index
                if !steps.contains(false) {
                    return index
                }
            }
        }
        
        return -1
    }
    
    public func isPermutation(A : [Int]) -> Int {
        let sortedInput = A.sort()
        var iterator = 1
        
        return sortedInput.reduce(1, combine: { (result, item) -> Int in
            if item == iterator {
                iterator += 1
                return result * 1
            } else {
                iterator += 1
                return 0
            }
        })
    }
}