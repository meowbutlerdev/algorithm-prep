import Foundation

func solution(_ clothes:[[String]]) -> Int {
    clothes
        .reduce(into: [String: Int]()) { $0[$1[1], default: 0] += 1 }
        .values
        .reduce(1) { $0 * ($1 + 1) } - 1
}