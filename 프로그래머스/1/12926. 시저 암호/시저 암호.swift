let a = Character(" ").isLowercase

func solution(_ s:String, _ n:Int) -> String {
    let upper = "abcdefghijklmnopqrstuvwxyz".uppercased().map { String($0) }
    let lower = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
    var strArr = s.map { String($0) }
    var chaArr = Array(s)
    
    for i in 0..<chaArr.count {
        if chaArr[i] != " " {
            if chaArr[i].isLowercase {
                var index = lower.firstIndex(of: String(chaArr[i]))! + n
                
                if index > lower.count-1 {
                    index = index - lower.count
                }
                
                strArr[i] = lower[index]
            } else {
                var index = upper.firstIndex(of: String(chaArr[i]))! + n
                
                if index > upper.count-1 {
                    index = index - upper.count
                }
                
                strArr[i] = upper[index]
            }
        }
    }
    
    return strArr.joined()
}