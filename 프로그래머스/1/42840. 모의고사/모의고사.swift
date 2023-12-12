import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let stu1 = [1, 2, 3, 4, 5]
    let stu2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let stu3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var count = [0, 0, 0]
    
    for i in 0..<answers.count {
        let index1 = i % stu1.count
        let index2 = i % stu2.count
        let index3 = i % stu3.count

        if answers[i] == stu1[index1] {
            count[0] += 1
        }
        if answers[i] == stu2[index2] {
            count[1] += 1
        }
        if answers[i] == stu3[index3] {
            count[2] += 1
        }
    }
    
    var result = [Int]()
    let max = count.max()!
    for i in 0..<3 {
        if count[i] == max {
            result.append(i+1)
        }
    }
    
    return result
}