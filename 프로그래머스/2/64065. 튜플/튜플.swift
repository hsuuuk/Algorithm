import Foundation

func solution(_ s:String) -> [Int] {
    var str = s.replacingOccurrences(of: "{", with: "").replacingOccurrences(of: "}}", with: "")
    var arr = str.components(separatedBy: "},")
    
    var arr2 = [[Int]]()
    for item in arr {
        let a = item.split(separator: ",").map { Int(String($0))! }
        arr2.append(a)
    }
    arr2.sort { $0.count < $1.count }
    
    var nums = [Int]()
    for item in arr2 {
        var a = item
        a.removeAll(where: { nums.contains($0) })
        nums.append(a.first!)
    }

    return nums
}
