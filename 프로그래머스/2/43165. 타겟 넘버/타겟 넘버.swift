import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    return numbers.reduce([0]) { (acc, num) in
        acc.flatMap { [$0 + num, $0 - num] }
    }.filter { $0 == target }.count
}