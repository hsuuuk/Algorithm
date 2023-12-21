func solution(_ ingredient:[Int]) -> Int {
    var stack = [Int]()
    var cnt = 0
    
    for food in ingredient {
        stack.append(food)
        
        if stack.last == 1 {
            let last = stack.suffix(4)
            if  last == [1, 2, 3, 1] {
                stack.removeLast()
                stack.removeLast()
                stack.removeLast()
                stack.removeLast()
                cnt += 1
            }
        }
    }
    
    return cnt
}
