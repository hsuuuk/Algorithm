import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dic = [String: Int]()
 
    zip(name, yearning).forEach { person, point in
        dic[person] = point
    }
    
    var nums = [Int]()

    photo.forEach { photos in
        var num = 0
        
        photos.forEach { str in
            num += dic[str] ?? 0
        }
        
        nums.append(num)
    }
    
    return nums
}