import Foundation

func solution(_ s:String) -> [Int] {
    var result = [Int]()
    var dic = [Character: Int]()
    let arr = Array(s)

    for i in 0..<arr.count {
        dic[arr[i]] = 0
    }

    for i in 0..<arr.count {
        if dic[arr[i]] == 0 {
            dic[arr[i]] = i+1
            result.append(-1)
        } else {
            result.append(i+1-dic[arr[i]]!)
            dic[arr[i]] = i+1
        }
    }
    
    return result
}
