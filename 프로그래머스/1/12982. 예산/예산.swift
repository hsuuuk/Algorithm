import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sum = 0
    var count = 0
    
    for i in d.sorted() {
        if (sum + i) > budget {
            break
        } else {
            sum += i
            count += 1
        }
    }
    
    return count
}