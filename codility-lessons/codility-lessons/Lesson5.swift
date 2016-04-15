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
}