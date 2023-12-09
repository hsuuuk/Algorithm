import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var result = [Int]()
    var rank = [Int]()
    
    for i in score {
        rank.append(i)
        
        let top3 = rank.sorted(by: >).prefix(k)
        result.append(top3[top3.endIndex-1])
    }
    
    return result
}