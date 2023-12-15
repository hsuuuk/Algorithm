import Foundation

func solution(_ s:String) -> Int {
    var s = s.map{ String($0) }
    var count = 0
    var ans = 0
    
    while count < s.count {
        count += 1
        
        var stack = ""
        
        for cha in s {
            if let last = stack.last {
                if (last == "[" && cha == "]") ||
                   (last == "{" && cha == "}") ||
                   (last == "(" && cha == ")") {
                    stack.removeLast()
                    continue
                }
            }
            
            stack.append(cha)
        }
        print("stack: \(stack)")
        if stack.isEmpty {
            ans += 1
        }
        
        let first = s.removeFirst()
        s.append(first)
    }
    
    return ans
}
