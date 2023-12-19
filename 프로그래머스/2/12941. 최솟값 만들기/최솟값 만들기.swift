import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var ans = 0
    var arr1 = A.sorted(by: <)
    var arr2 = B.sorted(by: >)
    
    for i in 0..<arr1.count {
        ans += arr1[i] * arr2[i]
    }

    return ans
}