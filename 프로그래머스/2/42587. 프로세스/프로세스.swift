import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var p = priorities
    var l = location
    var cnt  = 0
    
    while p.count != 0 {
        if p[0..<p.count-1].contains(where: { $0 > p[0] }) {
            let first = p.removeFirst()
            p.append(first)
            
            if l == 0 {
                l = p.count - 1
            } else {
                l -= 1
            }
        } else {
            p.removeFirst()
            cnt += 1
            if l == 0 {
                break
            } else {
                l -= 1
            }
        }
    }
    
    return cnt
}