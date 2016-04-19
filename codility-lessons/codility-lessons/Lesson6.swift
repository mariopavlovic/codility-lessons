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
    
    
    /*!
     Counts distinct elements in array
     
     - parameter A: input array
     
     - returns: number of distinct values appearing in array A
     */
    public func numDistinctValues(A : [Int]) -> Int {
        return Set(A).count
    }
    
    
    
    public func maxTripletValue(A : [Int]) -> Int {
        guard A.count > 2 else {
            return 0
        }
        
        var sortedInput = A.sort()
        let N = sortedInput.count
        
        //positive
        let R = sortedInput[N - 1]
        let Q = sortedInput[N - 2]
        let P = sortedInput[N - 3]
        
        //negatives
        let Rnegative = sortedInput[0]
        let Qnegative = sortedInput[1]
        
        return max(P * Q * R, Rnegative * Qnegative * R)
    }
    
    
    /*!
     Finds number of intersecting discs
     
     - parameter A: input containing radius of discs
     
     - returns: number of intersecting discs
     */
    public func numIntersectingDiscs(A : [Int]) -> Int {
        guard A.count > 0 else {
            return 0
        }
        
        var discs = [Set<Int>]()
        for (index, radius) in A.enumerate() {
            let low = index - radius
            let high = index + radius
            
            discs.append(Set((low...high).map{$0}))
        }
        
        var counter = 0
        for i in 0..<discs.count {
            let disc = discs[i]
            for j in i+1 ..< discs.count {
                let next = discs[j]
                if disc.intersect(next).count > 0 {
                    counter += 1
                }
            }
            
            if counter > 10000000 {
                return -1
            }
        }
        
        return counter
    }
}