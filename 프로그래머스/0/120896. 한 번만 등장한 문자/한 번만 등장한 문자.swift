import Foundation

func solution(_ s:String) -> String {
    let freq = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +)
    return freq.filter { $0.value == 1 }.keys.sorted().map { String($0) }.joined()
}