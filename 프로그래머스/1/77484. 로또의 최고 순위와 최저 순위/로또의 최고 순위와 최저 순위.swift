import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let zero = lottos.filter { $0 == 0 }
    var same = [Int]()
    
    for num in lottos {
        if win_nums.contains(num) {
            same.append(num)
        }
    }
    
    var maxCnt = same.count + zero.count
    var minCnt = same.count
    
    func rank(_ cnt: Int) -> Int {
        if cnt == 6 {
            return 1
        } else if cnt == 5 {
            return 2
        } else if cnt == 4 {
            return 3
        } else if cnt == 3 {
            return 4
        } else if cnt == 2 {
            return 5
        } else {
            return 6
        }
    }
    
    return [rank(maxCnt), rank(minCnt)]
}
