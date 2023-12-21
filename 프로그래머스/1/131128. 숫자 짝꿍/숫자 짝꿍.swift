func solution(_ X:String, _ Y:String) -> String {
    var xDic = [String: Int]()
    var yDic = [String: Int]()

    for i in X.map { String($0) } {
        xDic[i, default: 0] += 1
    }
    for i in Y.map { String($0) } {
        yDic[i, default: 0] += 1
    }
    
    var stack = [String]()
    for key in xDic.keys {
        stack += Array(repeating: key, count: min(xDic[key] ?? 0, yDic[key] ?? 0))
    }
    
    return stack.isEmpty ? "-1" : stack.filter { $0 == "0" }.count == stack.count ? "0" : stack.sorted(by: >).joined()
}