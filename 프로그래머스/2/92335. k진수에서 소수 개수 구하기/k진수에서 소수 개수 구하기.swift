import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let radix = String(n, radix: k)
    var arr = radix.split(separator: "0").map { Int(String($0))! }.filter { $0 != 1 }
    
    var count = 0
    for num in arr {
        var isPrime = true
        
        for i in stride(from: 2, through: Int(sqrt(Double(num))), by: 1) {
            if num % i == 0 {
                isPrime = false
                break
            }
        }
        
        if isPrime {
            count += 1
        }
    }
    
    return count
}