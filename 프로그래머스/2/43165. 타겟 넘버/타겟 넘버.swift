import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var cnt = 0
    
    func dfs(index: Int, sum: Int) {
        if index == numbers.count-1 && sum == target {
            cnt += 1
            return
        } else if index == numbers.count-1 {
            return
        }
        
        dfs(index: index + 1, sum: sum + numbers[index + 1])
        dfs(index: index + 1, sum: sum - numbers[index + 1])
    }
    dfs(index: -1, sum: 0)
    
    return cnt
}