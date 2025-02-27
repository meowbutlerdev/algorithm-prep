import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    return stride(from: c - 1, to: my_string.count, by: m).map {
        String(my_string[my_string.index(my_string.startIndex, offsetBy: $0)])
    }.joined()
}