import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0

    let arr = Array(String(n)).map { Int(String($0))! }
    answer = arr.reduce(0, +)
    
    return answer
}