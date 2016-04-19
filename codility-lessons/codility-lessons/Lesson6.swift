import Foundation

public class Lesson6 {
    
    /*!
     Checks if input is triangular triplet. Triangular
     triplet has to satisfy: 
     A[P] + A[Q] > A[R],
     A[Q] + A[R] > A[P],
     A[R] + A[P] > A[Q].
     
     Where 0 ≤ P < Q < R < N
     
     - parameter A: input field
     
     - returns: returns 1 if there exists a triangular triplet 
     for this array and returns 0 otherwise
     */
    public func isTriangularTriplet(A : [Int]) -> Int {
        let sortedInput = A.sort()
        let N = sortedInput.count
        
        for (index, P) in sortedInput.enumerate() {
            if index + 2 >= N {
                return 0
            }
            
            let Q = sortedInput[index + 1]
            let R = sortedInput[index + 2]
            
            if (P + Q > R) {
                return 1
            }
        }
        
        return 0
    }
}