func solution(_ str1:String, _ str2:String) -> Int {
    let str1cha = Array(str1)
    let str2cha = Array(str2)
    
    var str1arr = [String]()
    var str2arr = [String]()
    
    // 두글자씩 합치기
    for i in 0..<str1cha.count-1 {
        if str1cha[i].isLetter && str1cha[i+1].isLetter {
            str1arr.append("\(str1cha[i].lowercased())\(str1cha[i+1].lowercased())")
        }
    }
    for i in 0..<str2cha.count-1 {
        if str2cha[i].isLetter && str2cha[i+1].isLetter {
            str2arr.append("\(str2cha[i].lowercased())\(str2cha[i+1].lowercased())")
        }
    }
    
    var allCnt = str1arr.count + str2arr.count
    // 교집합
    var crossCnt = 0
    for i in str1arr.indices {
        for j in str2arr.indices {
            if str1arr[i] == str2arr[j] {
                crossCnt += 1
                str2arr.remove(at: j)
                break
            }
        }
    }
    
    // 합집합 = A + B - A 교집합 B
    allCnt = allCnt - crossCnt

    // answer
    if allCnt == 0 {
        return 65536
    } else {
        return Int(Double(crossCnt)/Double(allCnt)*65536)
    }
}
