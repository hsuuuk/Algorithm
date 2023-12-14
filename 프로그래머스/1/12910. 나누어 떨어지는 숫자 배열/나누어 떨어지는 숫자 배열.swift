func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var ans = [Int]()
    
    for i in arr {
        if i % divisor == 0 {
            ans.append(i)
        }
    }
    
    return ans.isEmpty ? [-1] : ans.sorted(by: <)
}
