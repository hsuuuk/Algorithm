import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    
    for i in stride(from: 3, through: n, by: 2) {
        var isPrime = true
        
        for j in stride(from: 3, through: sqrt(Double(i)), by: 1) {
            if i % Int(j) == 0 {
                isPrime = false
                break
            }
        }
        
        if isPrime {
            count += 1
        }
    }
    
    return count + 1
}