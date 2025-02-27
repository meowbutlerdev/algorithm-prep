import Foundation

func solution(_ n:Int) -> [[Int]] {
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    for idx in 0..<n {
        arr[idx][idx] = 1
    }
    return arr
}