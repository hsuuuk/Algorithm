func solution(_ n:Int) -> Int {
    var pibo = [0, 1, 2]
    
    if n >= 3 {
        for i in 3...n {
            pibo.append((pibo[i-1] + pibo[i-2]) % 1234567)
        }
    }
    
    return pibo[n]
}