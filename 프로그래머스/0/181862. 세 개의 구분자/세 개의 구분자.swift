import Foundation

func solution(_ myStr:String) -> [String] {
    let result = myStr.split(whereSeparator: { "abc".contains($0) }).map { String($0) }
    return result.isEmpty ? ["EMPTY"] : result
}