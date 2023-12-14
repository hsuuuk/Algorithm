func solution(_ s:String) -> String {
    var arr = s.map { String($0) }
    var ans = arr.sorted(by: >).joined()
    return ans
}
