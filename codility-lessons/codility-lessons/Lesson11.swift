import Foundation

public class Lesson11 {
    public func numSemiprimes(N: Int, P: [Int], Q: [Int]) -> [Int] {
        let primeNumbers = primes(N)
        let semiprimeNumbers = semiprimes(primeNumbers)
        
        var result = [Int]()
        for i in 0 ..< P.count {
            let p = P[i]
            let q = Q[i]
            var count = 0
            
            for semiprime in semiprimeNumbers {
                if (semiprime >= p) && (semiprime <= q) {
                    count += 1
                }
            }
            
            result.append(count)
        }
        
        return result
    }
}

extension Lesson11 {
    func primes(N: Int) -> [Int] {
        guard N > 1 else {
            return []
        }
        
        var numbers = Array(count: N+1, repeatedValue: true)
        numbers[0] = false
        numbers[1] = false
        
        //find primes
        let rootN = Int(ceil(sqrt(Double(N))))
        for i in 2 ... rootN {
            if numbers[i] {
                var multiple = i+i
                while multiple < N {
                    numbers[multiple] = false
                    multiple += i
                }
            }
        }
        
        //transform primes from bools -> ints by
        //getting indexes of true values (primes)
        var primes = [Int]()
        for (index, value) in numbers.enumerate() {
            if value {
                primes.append(index)
            }
        }
        
        return primes
    }
    
    func semiprimes(primes: [Int]) -> [Int] {
        var semiprimes = Set<Int>()
        for i in 0 ..< primes.count {
            let base = primes[i]
            for j in i ..< primes.count {
                let next = primes[j]
                semiprimes.insert(base * next)
            }
        }
        
        return Array(semiprimes)
    }
}