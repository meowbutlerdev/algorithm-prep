import Foundation

func solution(_ arr:[[Int]]) -> Int {
    let transposed: [[Int]] = (0..<arr.count).map { idx in arr.map { $0[idx] } }
    return arr == transposed ? 1 : 0
}