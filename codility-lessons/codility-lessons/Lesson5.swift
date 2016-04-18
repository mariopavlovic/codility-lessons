import Foundation

public class Lesson5 {
    /*!
     Counts passing cars
     
     - parameter A: non-empty array of cars, valid values are 0 and 1.
     0: car driving from W -> E
     1: car driving from E -> W
     
     - returns: number of passing cars. If result is greather
     then 1,000,000,000 return will be -1
     */
    public func countPassingCars(A: [Int]) -> Int {
        var carsOnRightSide = A.reduce(0, combine: +)
        var numPassedCars = 0
        
        for car in A {
            switch car {
            case 0:
                numPassedCars += carsOnRightSide
            case 1:
                carsOnRightSide -= 1
            default:
                print("Error case")
            }
            
            if numPassedCars > 1000000000 {
                return -1
            }
        }
        
        return numPassedCars
    }
    
    /*!
     Returns number of dividable elements by K in [A, B] range
     
     - parameter A: range stat (inclusive)
     - parameter B: range end (inclusive)
     - parameter K: divider
     
     - returns: Number of dividiable elements
     */
    public func countDivisible(A: Int, _ B: Int, _ K: Int) -> Int {
        //cover the edge case where A is 0
        if A == 0 {
            return (B - (B % K)) / K + 1
        }
        
        return (B - (B % K)) / K - (A - 1) / K
    }
    
    
    /*!
     Calculates minimal impact factor of nucleotides.
     Impact factor:
     A - 1
     C - 2
     G - 3
     T - 4
     
     - parameter S: DNA sequence
     - parameter P: analyzed nucleotides start index
     - parameter Q: analyzed nucleotides end index
     
     - returns: Array of minimal impacts for start/end indexes
     */
    public func minimalImpactFactors(S : String, _ P : [Int], _ Q : [Int]) -> [Int] {
        //sanitize
        guard P.count == Q.count else {
            return []
        }
        
        //map
        let impactFactors = S.characters.map { (nucleotid) -> Int in
            return impactForNucleotid(nucleotid)
        }
        
        //slice and find minimal
        var result = Array(count: P.count, repeatedValue: 0)
        for (index, start) in P.enumerate() {
            let end = Q[index]
            
            if let minimal = impactFactors[start...end].minElement() {
                result[index] = minimal
            }
        }
        
        return result
    }
    
    func impactForNucleotid(nucleotid: Character) -> Int {
        switch (nucleotid) {
            case "A": return 1
            case "C": return 2
            case "G": return 3
            case "T": return 4
            default: return 0
        }
    }
}