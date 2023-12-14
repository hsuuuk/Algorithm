func solution(_ n:Int) -> String {
    var arr = [String]()
    
    for i in 1...n {
        if i % 2 == 0 {
            arr.append("박")
        } else {
            arr.append("수")
        }
    }
    
    return arr.joined()
}