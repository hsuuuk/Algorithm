import Foundation

func solution(_ n:Int64) -> Int64 {
    let num = sqrt(Double(n))
    
    if num == Double(Int(num)) {
        let ans = (num+1)
        return Int64(ans*ans)
    } else {
        return Int64(-1)
    }
}