import Foundation

func solution(_ s:String) -> Bool {
    let arr = s.map { String($0) }
    
    let pCnt = arr.filter { $0 == "p" || $0 == "P" }.count
    let yCnt = arr.filter { $0 == "y" || $0 == "Y" }.count

    return pCnt == yCnt ? true : false
}