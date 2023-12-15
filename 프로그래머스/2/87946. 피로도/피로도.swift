import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer: Int = 0
    dfs(k: k, dungeons: dungeons, count: 0, answer: &answer)
    return answer
}

func dfs(k: Int, dungeons: [[Int]], count: Int, answer: inout Int) {
    answer = max(count, answer)

    for i in 0..<dungeons.count {
        var dungeons = dungeons
        
        if dungeons[i][0] <= k {
            let k = k - dungeons[i][1]
            dungeons.remove(at: i)
            let count = count + 1
            dfs(k: k, dungeons: dungeons, count: count, answer: &answer)
        }
    }
}