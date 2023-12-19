import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var ans = [[Int]]()
    var temp = 0
    
    for i in 0..<arr1.count {
        ans.append([])
        for j in 0..<arr2[0].count {
            temp = 0
            for k in 0..<arr2.count {
                temp += arr1[i][k] * arr2[k][j]
            }
            ans[i].append(temp)
        }
    }
    
    return ans
}