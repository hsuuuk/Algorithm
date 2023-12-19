import Foundation

func solution(_ n:Int) -> Int {
    var answer: Int = 0
    var radix_cnt = Array(String(n, radix: 2)).filter { $0 == "1" }.count
    var count = n
    
    while answer == 0 {
        count += 1
        
        let one_cnt = Array(String(count, radix: 2)).filter { $0 == "1" }.count
        if one_cnt == radix_cnt {
            answer = count
        }
    }
    
    return answer
}