import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    return zip(my_strings, parts).map { string, part in
        let start = string.index(string.startIndex, offsetBy: part[0])
        let end = string.index(string.startIndex, offsetBy: part[1])
        return String(string[start...end])
    }.joined()
}