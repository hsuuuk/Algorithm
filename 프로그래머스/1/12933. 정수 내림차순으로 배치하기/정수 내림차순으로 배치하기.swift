func solution(_ n:Int64) -> Int64 {
    let str = String(n)
    let arr = Array(str).map { String($0) }
    let sorted = arr.sorted(by: >)
    let int = Int64(sorted.joined())!
    return int
}
