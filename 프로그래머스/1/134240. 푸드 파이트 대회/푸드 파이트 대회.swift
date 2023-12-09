import Foundation

func solution(_ food:[Int]) -> String {
    var food = food
    food.remove(at: 0)

    var food1 = [String]()

    for i in 1...food.count {
        let count = food[i-1]/2
        
        if count != 0 {
            food1 += Array(repeating: String(i), count: count)
        }
    }

    var food2 = food1.reversed()

    return food1.joined()+"0"+food2.joined()
}

