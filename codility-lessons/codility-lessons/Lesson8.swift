import Foundation

public class Lesson8 {
    
    public func numEquiLeader(A: [Int]) -> Int {
        guard let leader = findLeader(A) else {
            return 0
        }
        
        var count = 0
        var stack = [Int]()
        var rest = A
        
        for item in A {
            stack.append(item)
            rest.removeFirst()
            
            if checkLeader(stack, candidate: leader) && checkLeader(rest, candidate: leader) {
                count += 1
            }
        }
        
        return count
    }
    
    func findLeader(A: [Int]) -> Int? {
        var stack = [Int]()
        
        for item in A {
            stack.append(item)
            guard stack.count > 1 else {
                continue
            }
            
            //take last two elements of the stack
            let last = stack[stack.count - 1]
            let nextToLast = stack[stack.count - 2]
            
            //see if they are different
            if last != nextToLast {
                //if so remove them
                stack.popLast()
                stack.popLast()
            }
        }
        
        guard let leaderCandidate = stack.first else {
            return nil
        }
        
        return checkLeader(A, candidate: leaderCandidate) ? leaderCandidate : nil
    }
    
    func checkLeader(A: [Int], candidate: Int) -> Bool {
        var count = 0
        for item in A {
            if item == candidate {
                count += 1
            }
        }
        
        return count > (A.count / 2)
    }
}