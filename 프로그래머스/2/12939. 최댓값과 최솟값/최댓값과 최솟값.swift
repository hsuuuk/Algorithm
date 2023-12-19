func solution(_ s:String) -> String {
    var arr = s.split(separator: " ").map { Int(String($0)) ?? 0 }.sorted(by: <)
    var min = arr.removeFirst()
    var max = arr.removeLast()
    
    return String(min) + " " + String(max)
}
