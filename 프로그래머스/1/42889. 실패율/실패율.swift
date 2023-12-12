import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//    var failurePercent = [Int: Double]()
//
//    for i in 1...N {
//        let failure = stages.filter { $0 == i }.count
//        let player = stages.filter { $0 >= i }.count
//        failurePercent[i] = Double(failure) / Double(player)
//    }
//
//    let result = failurePercent.sorted(by: <).sorted(by: { $0.value > $1.value })
//
//    return result.map { $0.key }
    
//    var dic = [Int: Double]()
//    var player = stages.count
//
//    for i in 1...N {
//        let current = stages.filter { $0 == i }.count
//        player -= current
//
//        let ratio = Double(current) / Double(player)
//        dic[i] = ratio
//    }
//
//    let result  = dic.sorted(by: <).sorted(by: { $0.value > $1.value }).map { $0.key }
//    return result
    
    // 개선사항1️⃣: for문 안에서 고차함수를 사용하면 시간복잡도 상승 > 고차함수를 for문으로 교체
    
    var dic = [Int: Double]()
    var player = stages.count

    for i in 1...N {
        var current = 0
        for j in 0..<stages.count {
            if stages[j] == i {
                current += 1
            }
        }
        player -= current

        let ratio = Double(current) / Double(player)
        dic[i] = ratio
    }

    let result  = dic.sorted(by: <).sorted(by: { $0.value > $1.value }).map { $0.key }
    return result
}