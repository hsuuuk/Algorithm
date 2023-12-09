import Foundation

func solution(_ n:Int) -> Int {
    let a = String(n, radix: 3)
    let b = a.reversed()
    let c = Int(String(b), radix: 3)!
    
    return c
}
