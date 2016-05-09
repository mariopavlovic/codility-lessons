import Foundation

/*
 Note: under development
 
 Plan: find all position frog can jump from a current
 position, then iteratate over all posibile next steps 
 and find a new position frog can jump. Once you have 
 all posibile outcomes that frog can take from one side 
 to another then just find the minimal one. 
 
 Idea is to build a tree of jump options and then find
 the smallest tree. So just find all posibile branches 
 and then the smallest one is the quickest
 
 */

public class Lesson13 {
    public func minNumberOfJumps(A: [Int]) -> Int {
        var position = -1
        let end = A.count
        
        let fibonacciNumbers = fibonacci(100000)
        
        var sequences = [[Int]]()
        for fib in fibonacciNumbers {
            let index = fib + position
            
            if index < A.count && A[index] == 1 {
                sequences.append([fib])
            }
        }
        
        return 0
    }
}

extension Lesson13 {
    func fibonacci(to: Int) -> [Int] {
        var sequence = [Int]()
        sequence.append(1)
        sequence.append(1)
        
        var index = 1
        while sequence[index] < to {
            index += 1
            sequence.append(sequence[index - 1] + sequence[index - 2])
        }
        
        return sequence
    }
}