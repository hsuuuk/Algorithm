import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    
    var score = score.sorted(by: >)
    
    if score.count/m < 1 {
        return 0
    }
    
    for i in 1...score.count/m {
        result += m*min(score[i*m-1], k)
    }
    
    return result
}