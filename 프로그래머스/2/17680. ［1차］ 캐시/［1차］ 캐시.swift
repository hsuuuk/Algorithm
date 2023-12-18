// LRU(Least Recently Used): 가장 오랫동안 참조되지 않은 페이지를 교체하는 기법
// Cache 에서도 사용된다. 캐시에서 사용 공간이 부족할 때, 가장 오랫동안 사용되지 않은 항목을 제거하고, 새로운 녀석을 배치하는 형식으로 동작
// Cache Hit: 참조값이 이미 존재한다면, 그 값을 헤드(맨 앞)으로 보낸다.(배열에선 맨 뒤)
// Cache Miss: 참조값이 없다면, 그 값을 헤더(맨 앞)에 추가한다.(배열에선 맨 뒤)
// 만약, 메모리 사이즈가 넘어가면, 가장 먼저 들어간 데이터를 삭제하면서 사이즈를 유지한다.

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    let cities = cities.map { $0.lowercased() } // 대소문자를 구분하지 않는다고 문제에서 명시
    var cacheArr = [String]()
    var count = 0
    
    for city in cities {
        if cacheArr.contains(city) { // Cache Hit
            count += 1
            cacheArr.remove(at: cacheArr.firstIndex(of: city)!)
            cacheArr.append(city)
            
            if cacheArr.count > cacheSize {
                cacheArr.removeFirst()
            }
        } else { // Cache Miss
            count += 5
            cacheArr.append(city)
            
            if cacheArr.count > cacheSize {
                cacheArr.removeFirst()
            }
        }
    }
    
    return count
}