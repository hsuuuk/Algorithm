import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dic = [Int: Int]()
    
    for i in tangerine {
        dic[i, default: 0] += 1
    }
    
    var count = 0
    var k = k
    var arr = dic.values.sorted(by: >)
    
    for i in 0..<arr.count {
        if k > 0 {
            k = k - arr[i]
            count += 1
        }
    }
    
    return count
}
