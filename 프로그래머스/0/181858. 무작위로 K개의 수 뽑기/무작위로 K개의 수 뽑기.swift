import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result: [Int] = []
    var seen = Set<Int>()
    
    for num in arr {
        if seen.insert(num).inserted {
            result.append(num)
            if result.count == k { break }
        }
    }
    
    while result.count < k {
        result.append(-1)
    }
    
    return result
}