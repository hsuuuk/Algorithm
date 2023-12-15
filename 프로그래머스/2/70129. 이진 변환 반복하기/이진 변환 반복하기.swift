import Foundation

func solution(_ s:String) -> [Int] {
    var count = 0
    var zero = 0
    explore(s, count: &count, zero: &zero)
    return [count, zero]
}

func explore(_ s: String, count: inout Int, zero: inout Int) {
    var arr = s.map { String($0) }
    
    if s != "1" {
        count += 1
        zero += arr.filter { $0 == "0" }.count
        arr.removeAll(where: { $0 == "0" })
        let radix = String(arr.count, radix: 2)

        explore(radix, count: &count, zero: &zero)
    }
}