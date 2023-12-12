func solution(_ arr:[Int]) -> Double {
    let sum = arr.reduce(0, +)
    let ave = Double(sum) / Double(arr.count)
    return ave
}