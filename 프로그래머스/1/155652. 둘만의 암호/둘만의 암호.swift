func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let skip = Array(skip)
    var eng = Array("abcdefghijklmnopqrstuvwxyz").filter { !skip.contains($0) }
    
    var arr = Array(s)
    for i in 0..<arr.count {
        if let beforeIndex = eng.firstIndex(of: arr[i]) {
            let afterIndex = (beforeIndex + index) % eng.count // index가 eng보다 두바퀴 더 클 가능성도 반드시 고려
            arr[i] = eng[afterIndex]
        }
    }
    
    return arr.map { String($0) }.joined()
}
