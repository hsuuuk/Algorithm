import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result = 0
    var bottle = n
    
    while bottle >= a {
        result += bottle / a * b
        bottle = (bottle / a * b) + (bottle % a)
    }
    
    return result
}
