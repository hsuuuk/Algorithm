func solution(_ x:Int, _ n:Int) -> [Int64] {
    var ans = [Int64]()
    
    for i in 1...n {
        ans.append(Int64(x * i))
    }
    
    return ans
}