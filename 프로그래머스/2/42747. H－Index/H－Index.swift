import Foundation

func solution(_ citations:[Int]) -> Int {
    var ans = 0

    for i in 1...citations.count {
        var count = 0

        for j in citations {
            if j >= i {
                count += 1
            }
        }

        if count >= i && ans < i {
            ans = i
        }
    }

    return ans
}