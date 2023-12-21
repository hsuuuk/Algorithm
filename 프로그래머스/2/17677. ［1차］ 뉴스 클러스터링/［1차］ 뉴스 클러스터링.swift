func solution(_ str1:String, _ str2:String) -> Int {
    var chaArr1 = Array(str1)
    var chaArr2 = Array(str2)
    
    var arr1 = [String]()
    var arr2 = [String]()
    
    for i in 0..<chaArr1.count-1 {
        if chaArr1[i].isLetter && chaArr1[i+1].isLetter {
            arr1.append(chaArr1[i].lowercased() + chaArr1[i+1].lowercased())
        }
    }
    for i in 0..<chaArr2.count-1 {
        if chaArr2[i].isLetter && chaArr2[i+1].isLetter {
            arr2.append(chaArr2[i].lowercased() + chaArr2[i+1].lowercased())
        }
    }

    // 교집합
    var sumCnt = arr1.count + arr2.count
    var crossCnt = 0
    for i in 0..<arr1.count {
        for j in 0..<arr2.count {
            if arr1[i] == arr2[j] {
                crossCnt += 1
                arr2.remove(at: j)
                break
            }
        }
    }
    
    // 합집합
    sumCnt -= crossCnt
    
    // 결과
    if sumCnt == 0 {
        return 65536
    } else {
        return Int(Double(crossCnt) / Double(sumCnt) * 65536)
    }
}