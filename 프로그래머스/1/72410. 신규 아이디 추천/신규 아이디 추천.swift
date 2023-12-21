import Foundation

func solution(_ new_id:String) -> String {
    var new_id = new_id
    
    new_id = new_id.lowercased()
    
    new_id = new_id.filter { $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }
    
    while new_id.contains("..") {
        new_id = new_id.replacingOccurrences(of: "..", with: ".")
    }
    
    if new_id.hasPrefix(".") { new_id.removeFirst() }
    if new_id.hasSuffix(".") { new_id.removeLast() }
    
    if new_id.isEmpty { new_id = "a" }
    
    if new_id.count >= 16 { new_id = String(new_id.prefix(15))
        if new_id.hasSuffix(".") { new_id.removeLast() }
    }
    
    if new_id.count <= 2 {
        while new_id.count != 3 { new_id += new_id.suffix(1) }
    }
    
    return new_id
}