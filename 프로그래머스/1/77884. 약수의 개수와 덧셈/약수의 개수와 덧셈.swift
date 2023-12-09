import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = (left...right)
        .map { num -> Int in
            
            var count = 0
            
            for i in 1...num {
                if num % i == 0 {
                    count += 1
                }
            }
            
            return count % 2 == 0 ? num : -num
        }
        .reduce(0, +)
    
    return result
}
