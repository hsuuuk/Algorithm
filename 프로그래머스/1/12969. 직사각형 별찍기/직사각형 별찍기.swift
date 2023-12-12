import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let a = n[0], b = n[1]

for _ in 0..<b {
    print(Array(repeating: "*", count: a).joined())
}
