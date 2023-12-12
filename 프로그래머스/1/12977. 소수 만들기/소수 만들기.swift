import Foundation

let a = 3 % 2

func solution(_ nums:[Int]) -> Int {
    var answer = 0

    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                let prime = nums[i] + nums[j] + nums[k]
                var isPrime = true
                
                for num in 2..<prime {
                    if prime % num  == 0 {
                        isPrime = false
                    }
                }
                
                if isPrime {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}
