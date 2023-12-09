import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let len = p.count
    var result = 0
    
    for i in 0...t.count-len {
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(t.startIndex, offsetBy: i+len-1)
        let range = startIndex...endIndex
        let str = String(t[range])
        
        if str <= p {
            result += 1
        }
    }
    
    return result
}