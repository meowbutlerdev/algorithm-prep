import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.split(whereSeparator: { !$0.isNumber }).map { Int($0)! }.reduce(0, +)
}