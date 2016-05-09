import Foundation

public class Lesson10 {
    
    public func minPerimeter(N: Int) -> Int {
        let sqrtN = wholeSqrt(N)
        var min = Int.max
        
        for i in 1 ... sqrtN {
            if N % i == 0 {
                let A = N / i
                let B = N / A
                min = Swift.min(2 * (A + B), min)
            }
        }
        
        return min
    }
    
    public func numFactors(N: Int) -> Int {
        let sqrtN = wholeSqrt(N)
        var count = 0
        
        for i in 1 ... sqrtN {
            if N % i == 0 {
                count += 1
            }
        }
        
        //check if N is a perfect sqrt (so we don't count twice)
        if sqrt(Double(N)) == Double(sqrtN) {
            count = (count * 2) - 1
        } else {
            count *= 2
        }
        
        return count
    }
    
    public func numPeakGroups(A: [Int]) -> Int {
        guard A.count > 2 else {
            return 0
        }
        
        //find indexes of all peaks
        let peakIndexes = peakIndex(A)
        let N = A.count
        
        for i in 1 ... N/3 {
            //detect if we can make a group
            if N % i != 0 {
                continue
            }
            
            let groupSize = N / i
            var hasPeaks = false
            var start = 0
            var finish = 0
            
            //go thorugh each group
            repeat {
                //reset params for new group
                hasPeaks = false
                start = finish
                finish = start + groupSize
                
                //check if peak is in that group
                for peak in peakIndexes {
                    if peak > start && peak < finish {
                        hasPeaks = true
                        break
                    }
                }
                
                //didn't find any in this group?
                if hasPeaks == false {
                    break
                }
            } while finish < N
            
            //if no peak in group than last num of groups is a result
            if hasPeaks == false {
                return i - 1
            }
        }
        
        //if each group has peaks than there are N/3 groups
        return N / 3
    }
}


extension Lesson10 {
    func wholeSqrt(N: Int) -> Int {
        return Int(floor(sqrt(Double(N))))
    }
    
    func peakIndex(A: [Int]) -> [Int] {
        var indexes = [Int]()
        for i in 1 ..< A.count - 1 {
            if (A[i] > A[i-1]) && (A[i] > A[i+1]) {
                indexes.append(i)
            }
        }
        
        return indexes
    }
}