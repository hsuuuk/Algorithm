import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var wantDic = [String: Int]()
    for i in 0..<want.count {
        wantDic[want[i]] = number[i]
    }
    
    var discountDic = [String: Int]()
    for i in 0...9 {
        discountDic[discount[i], default: 0] += 1
    }
    
    var ans = 0
    
    for i in 0..<discount.count-9 {
        if i != 0 {
            discountDic[discount[i-1]]! -= 1
            discountDic[discount[i+9], default: 0] += 1
        }
        
        if check(wantDic, discountDic) {
            ans += 1
        }
    }
    
    return ans
}

func check(_ a: [String: Int], _ b: [String: Int]) -> Bool {
    for item in a {
        let name = item.key
        let count = item.value
        
        if b[name, default: 0] < count {
            return false
        }
    }
    
    return true
}