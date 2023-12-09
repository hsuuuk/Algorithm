import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = 0
    
    for number in 1...number {
        var weak = 0
        
        for i in 1...Int(sqrt(Double(number))) {
            if number % i == 0 {
                if (i*i) == number {
                    weak += 1
                } else {
                    weak += 2
                }
            }
        }
        
        if weak <= limit {
            result += weak
        } else {
            result += power
        }
        
    }
    
    return result
}