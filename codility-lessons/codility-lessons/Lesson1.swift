import Foundation

public class Lesson1 {
    public func solution(N : Int) -> Int {
        //convert int to binary representation
        let binary = String(N, radix: 2)
        
        //find max number of reoccuring zeros
        let result = binary.characters.reduce((0, 0)) { (result: (max: Int, current: Int), next: Character) -> (Int, Int) in
            
            //+1 if it's 0, reset to 0 if it's 1
            switch (next) {
                case "0":
                    return (result.max, result.current + 1)
                case "1":
                    if result.current > result.max {
                        return (result.current, 0)
                    } else {
                        return (result.max, 0)
                    }
                default:
                    print("Error case!")
                    return (0, 0)
            }
        }
        
        return result.0
    }
}