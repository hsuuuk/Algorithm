import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var arr = Array(s)
    var x = arr[0]
    var x_count = 0
    var not_x_count = 0
    
    for cha in arr {
        if x_count != 0 && x_count == not_x_count {
            result += 1
            x_count = 0
            not_x_count = 0
            x = cha
        }
        
        if x == cha {
            x_count += 1
        } else {
            not_x_count += 1
        }
    }
    
    return result+1
}