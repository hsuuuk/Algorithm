import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var p = progresses
    var s = speeds
    var functions = [Int]()
    
    while p.count > 0 {
        for i in 0..<p.count {
            print("[i: \(i)]")
            p[i] += s[i]
        }
        print("[p: \(p)]")
        
        if p[0] >= 100 {
            var cnt = 0
            while p[0] >= 100 {
                p.removeFirst()
                s.removeFirst()
                cnt += 1
                
                if p.count == 0 { break }
            }
            
            functions.append(cnt)
        }
    }

    return functions
}