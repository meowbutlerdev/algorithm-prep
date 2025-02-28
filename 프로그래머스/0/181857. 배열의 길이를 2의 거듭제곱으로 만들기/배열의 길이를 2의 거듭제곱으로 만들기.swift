import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let isPower = (arr.count & (arr.count - 1)) == 0
    let count = isPower ? arr.count : 1 << (arr.count.bitWidth - arr.count.leadingZeroBitCount)
    return arr + Array(repeating: 0, count: count - arr.count)
}