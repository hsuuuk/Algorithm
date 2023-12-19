import Foundation

func solution(_ s:String) -> Bool {
    var arr = Array(s)
    var stack = 0
    
    for element in arr {
        if element == "(" {
            stack += 1
        } else {
            if stack == 0 {
                return false
            } else {
                stack -= 1
            }
        }
    }

    return stack == 0 ? true : false
}