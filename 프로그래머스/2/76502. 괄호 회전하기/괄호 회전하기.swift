import Foundation

func solution(_ s:String) -> Int {
    var arr = s.map { String($0) }
    var cnt = 0

    for _ in 0..<arr.count {
        var stack = ""

        for item in arr {
            
            guard let last = stack.last else {
                stack.append(item)
                continue
            }
            
            if (last == "(" && item == ")") || (last == "{" && item == "}") || (last == "[" && item == "]") {
                stack.removeLast()
            } else {
                stack.append(item)
            }
        }
        
        if stack.isEmpty {
            cnt += 1
        }
        
        let first = arr.removeFirst()
        arr.append(first)
    }
    
    return cnt
}