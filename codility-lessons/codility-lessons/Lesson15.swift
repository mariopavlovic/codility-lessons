import Foundation

public class Lesson15 {
    public func numAbsoluteDiscreteElements(A: [Int]) -> Int {
        let absoluteElements = A.map { abs($0) }
        return Set(absoluteElements).count
    }
}