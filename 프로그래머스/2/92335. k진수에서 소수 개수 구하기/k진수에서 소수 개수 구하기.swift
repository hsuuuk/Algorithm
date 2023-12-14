import Foundation

func isPrime(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    
    for i in stride(from: 2, through: sqrt(Double(n)), by: 1) {
        if n % Int(i) == 0 {
            return false
        }
    }
    
    return true
}

func solution(_ n:Int, _ k:Int) -> Int {
    let radix = String(n, radix: k)
    let arr = radix.split(separator: "0").filter { isPrime(Int($0) ?? 0) }
    print("[arr: \(arr)]")
    return arr.count
}
