import Foundation

func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    } else {
        let min = arr.min()!
        var arr = arr
        arr.removeAll(where: { $0 == min })
        return arr
    }
}
