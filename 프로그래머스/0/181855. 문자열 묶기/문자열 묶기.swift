import Foundation

func solution(_ strArr:[String]) -> Int {
    let count = Dictionary(strArr.map { ($0.count, 1) }, uniquingKeysWith: +)
    return count.values.max()!
}