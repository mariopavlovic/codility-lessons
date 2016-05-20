import Foundation

public class Lesson15 {
}

// MARK: - A AbsDistinct
extension Lesson15 {
    public func numAbsoluteDiscreteElements(A: [Int]) -> Int {
        let absoluteElements = A.map { abs($0) }
        return Set(absoluteElements).count
    }
}

extension Lesson15 {
    public func numDistinctSlices(M: Int, A: [Int]) -> Int {
        var start = 0
        var end = 0
        let N = A.count
        
        var count = 0
        var tempSet = Set<Int>()

        func resetMoves() {
            start += 1
            end = start
            tempSet = Set<Int>()
        }
        
        while start + (end - start) < N {
            //add new item to set
            let setCount = tempSet.count
            tempSet.insert(A[end])
            
            //check if set is unchanged (new value isn't disticnt)
            if setCount == tempSet.count {
                resetMoves()
            } else {
                //if new value is distinct then count it
                count += 1
                if count > 1000000000 {
                    return 1000000000
                }
                
                end += 1
                if end >= N {
                    resetMoves()
                }
            }
        }
        
        return count
    }
}