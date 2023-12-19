func solution(_ s:String) -> String {
    var arr = Array(s)
    var isBeforeBlank = true
    var ans = ""
    
    for cha in arr {
        ans += isBeforeBlank ? cha.uppercased() : cha.lowercased()
        isBeforeBlank = (cha == " ") ? true : false
    }
    
    return ans
}