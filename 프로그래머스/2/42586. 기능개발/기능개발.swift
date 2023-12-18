import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var days = [Int]()
    var cnt = 0
    var p = progresses
    var s = speeds
    
    while p.count > 0 {
        for i in p.indices {
            p[i] += s[i]
        }
        print("[p: \(p)]")
        if p.first! >= 100 {
            while p.first! >= 100 {
                cnt += 1
                
                p.removeFirst()
                s.removeFirst()
                
                if p.count == 0 { break }
            }
            
            days.append(cnt)
            cnt = 0
        }
    }
    
    return days
}
