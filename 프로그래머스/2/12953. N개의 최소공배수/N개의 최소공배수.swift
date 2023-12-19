func solution(_ arr:[Int]) -> Int {
    var result = arr[0]
    for i in 1..<arr.count {
        result = lcm(result, arr[i])
    }
    return result
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}