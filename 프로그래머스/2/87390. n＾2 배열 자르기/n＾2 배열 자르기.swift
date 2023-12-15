import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//    func createArr(_ n: Int) -> [[Int]] {
//        var arr = [[Int]]()
//
//        for i in 1...n {
//            var row = [Int]()
//
//            for j in 1...n {
//                row.append(max(i, j))
//            }
//
//            arr.append(row)
//        }
//
//        return arr
//    }
//    var twoDimArr = createArr(n)
//
//    var oneDimArr = [Int]()
//    for i in twoDimArr {
//        oneDimArr.append(contentsOf: i)
//    }
//
//    return Array(oneDimArr[Int(left)...Int(right)])
    
    var ans = [Int]()
    
    for i in Int(left)...Int(right) {
        ans.append(max(Int(i/n)+1, Int(i%n)+1))
    }
    
    return ans
}