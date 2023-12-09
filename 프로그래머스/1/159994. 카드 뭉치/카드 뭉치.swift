import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var index1 = 0
    var index2 = 0
    
    for i in 0..<goal.count {
        if index1 < cards1.count && goal[i] == cards1[index1] {
            index1 += 1
        } else if index2 < cards2.count && goal[i] == cards2[index2] {
            index2 += 1
        } else {
            return "No"
        }
    }
    
    return "Yes"
}
