import Foundation

func solution(_ n:Int) -> Int {
    // 1️⃣ 2부터 n 미만의 모든 수로 n을 나눈 나머지가 0이 있는지 구하기(2이상의 짝수는 소수가 아니라 제외)
//    var count = 0
//
//    for i in stride(from: 3, through: n, by: 2) {
//        var isPrime = true
//
//        for j in stride(from: 3, to: n, by: 2) {
//            if i % j == 0 {
//                isPrime = false
//                break
//            }
//        }
//
//        if isPrime {
//            count += 1
//        }
//    }
//
//    return count + 1
    
    // 2️⃣ 2부터 n 제곱근 이하의 모든 수로 n을 나눈 나머지가 0이 있는지 구하기 -> 소수가 아닌 경우, 그 수의 약수 중 적어도 하나는 그 수의 제곱근보다 작거나 같다.
//    var count = 0
//
//    for i in stride(from: 3, through: n, by: 2) {
//        var isPrime = true
//
//        for j in stride(from: 3, through: sqrt(Double(i)), by: 1) {
//            if i % Int(j) == 0 {
//                isPrime = false
//                break
//            }
//        }
//
//        if isPrime {
//            count += 1
//        }
//    }
//
//    return count + 1
    
    // 3️⃣ 소수의 배수를 제외한 나머지 수를 확인하는 방법(에라토스테네스의 체)
    var check = Array(repeating: 0, count: n + 1)
    var count = 0
    
    for i in 2...n {
        if check[i] == 0 {
            count += 1
            
            for j in stride(from: i, through: n, by: i) { // 합성수 제거
                check[j] = 1
            }
        }
    }
    
    return count
}
