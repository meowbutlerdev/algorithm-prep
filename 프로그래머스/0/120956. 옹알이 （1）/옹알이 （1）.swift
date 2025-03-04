import Foundation

func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    return babbling.filter { word in
        var temp = word
        for w in words {
            temp = temp.replacingOccurrences(of: w, with: " ")
        }
        return temp.trimmingCharacters(in: .whitespaces).isEmpty
    }.count
}