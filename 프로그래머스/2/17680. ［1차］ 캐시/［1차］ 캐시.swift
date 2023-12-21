import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cnt = 0
    var cities = cities.map { $0.lowercased() }
    var arr = [String]()
    
    for city in cities {
        if arr.contains(city) {
            arr.removeAll(where: { $0 == city })
            arr.append(city)
            cnt += 1
        } else {
            arr.append(city)
            cnt += 5
        }
        
        if arr.count > cacheSize {
            arr.removeFirst()
        }
    }
    
    return cnt
}