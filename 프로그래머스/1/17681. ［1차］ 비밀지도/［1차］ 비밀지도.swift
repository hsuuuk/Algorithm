import Foundation

func insert(n: Int, num: String) -> String {
    var number = num
    
    for i in 1...n {
        if num.count < i {
            number = "0"+number
        }
    }
    
    return number
}

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    let str1 = arr1.map { num -> String in
        let a = String(num, radix: 2)
        if a.count < n {
            let b = insert(n: n, num: a)
            return b
        }
        return a
    }
    let arr1 = Array(str1)
    
    let str2 = arr2.map { num -> String in
        let a = String(num, radix: 2)
        if a.count < n {
            let b = insert(n: n, num: a)
            return b
        }
        return a
    }
    let arr2 = Array(str2)
    
    for i in 0..<n {
        let array1 = Array(arr1[i])
        let array2 = Array(arr2[i])
        
        var arr = [String]()
        for j in 0..<n {
            
            if array1[j] == "0" && array2[j] == "0" {
                arr.append(" ")
            } else {
                arr.append("#")
            }
        }
        
        let str = arr.joined()
        answer.append(str)
    }
    
    return answer
}
