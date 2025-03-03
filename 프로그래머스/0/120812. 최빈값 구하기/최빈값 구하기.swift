import Foundation

func solution(_ array:[Int]) -> Int {
    let frequency = Dictionary(array.map { ($0, 1) }, uniquingKeysWith: +)
    let maxFreq = frequency.values.max() ?? 0
    let modeValues = frequency.filter { $0.value == maxFreq }.map { $0.key }
    return modeValues.count > 1 ? -1 : modeValues.first!
}