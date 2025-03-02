import Foundation

func solution(_ str_list:[String]) -> [String] {
    let l = str_list.firstIndex(of: "l") ?? Int.max
    let r = str_list.firstIndex(of: "r") ?? Int.max
    return l == r ? [] : l < r ? Array(str_list[..<l])
                       : Array(str_list[(r + 1)...])
}