import Foundation

public class Lesson7 {
    /*!
     Calculates the number of remaining fishes where 
     fish with bigger power eats smaller fish comming their
     way (oposite direction).
     
     - parameter A: Holds fish power
     - parameter B: Holds fish directions. 
     0 - upstream
     1 - downstream
     
     - returns: number of remaining fishes
     */
    public func numSurvivedFishes(A : [Int], _ B : [Int]) -> Int {
        var downStreamFishes = [Int]()
        var count = 0
        
        for index in 0 ..< A.count {
            let fishDirection = B[index]
            let fishPower = A[index]
            
            //check if fish is going upstream
            if fishDirection == 0 {
                //if there are no down stream fishes
                //then upstream fish escapes
                if downStreamFishes.count == 0 {
                    count += 1
                } else {
                    //battle upstream fish against all downstream fishes
                    while downStreamFishes.count > 0 {
                        if let downFish = downStreamFishes.last where fishPower > downFish  {
                            downStreamFishes.popLast()
                        } else {
                            break
                        }
                    }
                    
                    //if upstream fish ate all downstream 
                    //then it's a survivor
                    if downStreamFishes.count == 0 {
                        count += 1
                    }
                }
            } else {
                downStreamFishes.append(A[index])
            }
        }
        
        return count + downStreamFishes.count
    }
}