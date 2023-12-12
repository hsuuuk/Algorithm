import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for command in commands {
        let index1 = command[0]-1
        let index2 = command[1]-1
        let index3 = command[2]-1
        
        let arr = array[index1...index2].sorted(by: <)
        result.append(arr[index3])
    }
    
    return result
}