import Foundation

func solution(_ elements:[Int]) -> Int {
    var set = Set<Int>()
    
    for i in elements.indices {
        var sum = 0
        
        for j in elements.indices {
            var index = i + j
            
            if index >= elements.count {
                index -= elements.count
            }
            
            sum += elements[index]
            set.insert(sum)
        }
    }
    
    return set.count
}