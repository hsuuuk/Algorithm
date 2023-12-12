func solution(_ x:Int) -> Bool {
    let arr = Array(String(x)).map { Int(String($0))! }
    let sum = arr.reduce(0, +)
    
    if x % sum == 0 {
        return true
    }
    
    return false
}