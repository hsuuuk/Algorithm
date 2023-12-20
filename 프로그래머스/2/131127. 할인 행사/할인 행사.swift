import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var dayCnt = 0
    
    var item = [String: Int]()
    for i in 0..<want.count {
        item[want[i]] = number[i]
    }
  
    var discount = discount
    var discountDic = [String: Int]()
    for i in 0...9 {
        discountDic[discount[i], default: 0] += 1
    }
    
    for i in 0...discount.count-10 {
        if check(item, discountDic) {
            dayCnt +=  1
        }

        if i+10 < discount.count {
            discountDic[discount[i]]! -= 1
            discountDic[discount[i+10], default: 0] += 1
        }
    }
    
    return dayCnt
}

func check(_ dic1: [String: Int], _ dic2: [String: Int]) -> Bool {
    for item in dic1 {
        let key = item.key
        let count = item.value
        
        if dic2[key, default: 0] != count {
            return false
        }
    }
    
    return true
}