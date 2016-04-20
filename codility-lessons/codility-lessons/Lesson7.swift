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
    
    
    public func isProperlyNested(S : String) -> Int {
        var stack = [Character]()
        for char in S.characters {
            if let left = stack.last where isContrapart(left, right: char) {
                stack.popLast()
            } else {
                stack.append(char)
            }
        }
        
        return stack.count > 0 ? 0 : 1
    }
    
    func isContrapart(left: Character, right: Character) -> Bool {
        if left == "(" && right == ")" {
            return true
        } else if left == "[" && right == "]" {
            return true
        } else if left == "{" && right == "}" {
            return true
        } else {
            return false
        }
    }
    
    
    public func minimalNumberOfBlocks(H : [Int]) -> Int {
        //if only one block left then we need one block to fill it
        guard H.count > 1 else {
            return H.count
        }
        
        //get the minimal value
        guard let min = H.minElement() where min > 0 else {
            return 0
        }
        
        //cut the walls so that we add a new block
        //on top of the minimal value
        var remainingWalls = [[Int]]()
        var tempWall = [Int]()
        
        for height in H {
            if height == min {
                if tempWall.count > 0 {
                    remainingWalls.append(tempWall)
                    tempWall = [Int]()
                }
            } else {
                tempWall.append(height)
            }
        }
        
        //append last batch (if left)
        if tempWall.count > 0 {
            remainingWalls.append(tempWall)
        }
        
        //one block added, now lets iterate through 
        //rest of the blocks and user the same algorithm
        var score = 0
        for rest in remainingWalls {
            score += minimalNumberOfBlocks(rest)
        }
        
        return score + 1
    }
}
