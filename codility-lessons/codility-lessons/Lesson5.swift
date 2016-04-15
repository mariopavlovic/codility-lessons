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
}