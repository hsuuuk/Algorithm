import Foundation

func solution(_ s:String) -> String {
    let str = s.components(separatedBy: " ")
    var arr = [[String]]()
    var ans = [String]()
    
    for i in 0..<str.count {
        let a = str[i].map { String($0) }
        arr.append(a)
    }
            
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if (j+1) % 2 == 0 {
                arr[i][j] = arr[i][j].lowercased()
            } else {
                arr[i][j] = arr[i][j].uppercased()
            }
        }
        
        ans.append(arr[i].joined())
    }
    
    return ans.joined(separator: " ")
}
