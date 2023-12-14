func solution(_ s:String) -> String {
    let arr = s.map { String($0) }
    
    if arr.count % 2 == 0 {
        return arr[arr.count/2-1...arr.count/2].joined()
    } else {
        return arr[arr.count/2]
    }
}
