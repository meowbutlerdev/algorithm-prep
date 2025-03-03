import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var result = arr
    for (i, q) in query.enumerated() {
        result = i.isMultiple(of: 2) ? Array(result.prefix(q + 1)) : Array(result.suffix(from: q))
    }
    return result
}