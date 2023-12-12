func solution(_ num:Int) -> Int {
    var count = 0
    var result = num
    
    if num == 1 {
        return 0
    }
    
    while result != 1 {
        if result % 2 == 0 {
            result = result / 2
        } else {
            result = result * 3 + 1
        }
        
        if count <= 500 {
            count += 1
        } else {
            return -1
        }
        
    }
    
    return count
}
