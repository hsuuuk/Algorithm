import Foundation

// 연음 고려
func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    var cnt = 0
    
    for i in babbling {
        var word = i
        
        for i in 0..<words.count {
            word = word.replacingOccurrences(of: words[i], with: "\(i)")
        }
        
        if Int(word) != nil &&
            !(word.contains("00") || word.contains("11") || word.contains("22") || word.contains("33"))  {
            cnt += 1
        }
    }
    
    return cnt
}
