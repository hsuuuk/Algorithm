import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var players = players
    var rank = [String: Int]()
    
    for i in 0..<players.count {
        rank[players[i]] = i
    }
    
    callings.forEach { calling in
        let index = rank[calling]!
        
        rank[calling]! -= 1
        rank[players[index-1]]! += 1
        
        players.swapAt(index, index-1)
    }
    
    return players
}
