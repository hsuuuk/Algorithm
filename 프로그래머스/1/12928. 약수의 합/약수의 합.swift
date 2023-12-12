func solution(_ n:Int) -> Int {
    if n == 0 {
        return 0
    }
    
    var divisor = (1...n).filter { n % $0 == 0 }
    var sum = divisor.reduce(0, +)
    
    return sum
}