import Foundation

public class Lesson9 {
    //todo: need to redo
    public func maxProfit(A: [Int]) -> Int {
        guard   let min = A.minElement(), let minIndex = A.indexOf(min),
                let max = A.maxElement(), let maxIndex = A.indexOf(max) else {
            return 0
        }
        
        let marketAfterMin = A[minIndex ..< A.endIndex]
        let marketBeforeMax = A[0 ..< maxIndex]
        
        var max1 = Int.min
        var max2 = Int.min

        if let maxAfterMin = marketAfterMin.maxElement() {
             max1 = maxAfterMin - min
        }
        
        if let minBeforeMax = marketBeforeMax.minElement() {
            max2 = max - minBeforeMax
        }
        
        return Swift.max(max1, max2)
    }
}
