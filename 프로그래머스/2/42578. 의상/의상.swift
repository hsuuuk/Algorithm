import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var typeCount = [String: Int]()
    
    for i in clothes {
        typeCount[i[1], default: 0] += 1
    }
    
    var answer = 1
    
    for i in typeCount {
        answer = answer * (typeCount[i.key]! + 1) // 옷의 종류 + 안입는 경우
    }
    
    return answer - 1 // 하나도 안입는 경우 제외
}