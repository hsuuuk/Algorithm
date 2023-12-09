import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var dic = [Character: Int]()
    
    for key in keymap {
        let key = Array(key)
        for i in 0..<key.count {
            dic[key[i]] = min(dic[key[i]] ?? 100, i+1)
        }
    }
    
    var results = [Int]()
    
    for target in targets {
        var result = 0
        
        for cha in target {
            if let count = dic[cha] {
                result += count
            } else {
                result = -1
                break
            }
        }
        
        results.append(result)
    }
    
    return results
}