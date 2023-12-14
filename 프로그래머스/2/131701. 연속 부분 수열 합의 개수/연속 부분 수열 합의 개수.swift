import Foundation

func solution(_ elements:[Int]) -> Int {
    var ans = Set<Int>()
    
    for i in 0..<elements.count {
        var sum = 0
        
        for j in 0..<elements.count {
            var index = i + j
            
            if index >= elements.count {
                index = index - elements.count
            }
            
            sum += elements[index]
            ans.insert(sum)
        }
    }
    
    return ans.count
}
