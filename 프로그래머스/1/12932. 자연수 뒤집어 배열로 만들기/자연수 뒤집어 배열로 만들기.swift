func solution(_ n:Int64) -> [Int] {
    var arr = Array(String(n))
    arr.reverse()
    var ans = arr.map { Int(String($0))! }
    return ans
}
