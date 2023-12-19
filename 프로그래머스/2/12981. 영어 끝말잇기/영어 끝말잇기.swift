import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var wordDB = [String]()
    
    for i in 0..<words.count {

        if wordDB.contains(words[i]) {
            return [i % n + 1, i / n + 1]
        }
        
        if wordDB.count != 0 {
            var lastWord = wordDB[wordDB.count - 1]
            var word = words[i]
            if lastWord.removeLast() != word.removeFirst() {
                return [i % n + 1, i / n + 1]
            }
        }
        
        wordDB.append(words[i])
    }

    return [0, 0]
}