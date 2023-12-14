func solution(_ a:Int, _ b:Int) -> String {
    let weekday = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    let month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] // 윤년은 4의 배수인 년도(29일)
    let index = (-1 + month[0..<a-1].reduce(0, +) + b) % 7
    return weekday[index]
}
