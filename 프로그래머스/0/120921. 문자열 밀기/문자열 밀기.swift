import Foundation

func solution(_ A:String, _ B:String) -> Int {
    if A == B { return 0 }
    var rotated = A
    for count in 1..<A.count {
        rotated = String(rotated.last!) + rotated.dropLast()
        if rotated == B { return count }
    }
    
    return -1
}