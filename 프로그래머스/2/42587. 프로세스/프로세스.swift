import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var ans = 0
    var p = priorities
    var l = location
    
    while p.count > 0 {
        l = l - 1

        let max = p.max()!
        let pFirst = p[0]
        
        if pFirst != max {
            p.append(pFirst)
            p.removeFirst()
            
            if l < 0 { l = p.count - 1 }
        } else {
            ans += 1
            p.removeFirst()
            
            if l < 0 { break }
        }
    }
    
    return ans
}