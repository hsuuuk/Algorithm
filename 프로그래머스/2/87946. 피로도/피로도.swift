import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer: Int = 0
    
    func dfs(_ k: Int, _ dungeons: [[Int]], _ count: Int, _ answer: inout Int) {
        for dungeon in dungeons {
            if k >= dungeon[0] {
                let newK = k - dungeon[1]
                var newDungeons = dungeons
                newDungeons.removeAll(where: { $0 == dungeon })
                let newCnt = count + 1
                answer = max(answer, newCnt)
                
                dfs(newK, newDungeons, newCnt, &answer)
            }
        }
    }
    dfs(k, dungeons, 0, &answer)
    
    return answer
}