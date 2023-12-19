func solution(_ s:String) -> Int {
    var arr = Array(s)
    var result = [Character]()
    
    for i in 0..<arr.count {
        if !result.isEmpty && result.last == arr[i] {
            result.removeLast()
        } else {
            result.append(arr[i])
        }
    }
    
    return result.isEmpty ? 1 : 0
}