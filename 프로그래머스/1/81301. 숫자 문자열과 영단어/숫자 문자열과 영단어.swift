import Foundation

func solution(_ s:String) -> Int {
    var result = s
    
    var numString = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    for i in 0..<numString.count {
        result = result.replacingOccurrences(of: numString[i], with: String(i))

    }
    return Int(result)!
}