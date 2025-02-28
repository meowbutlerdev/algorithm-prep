import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    return stride(from: 0, to: my_str.count, by: n).map {
        let start = my_str.index(my_str.startIndex, offsetBy: $0)
        let end = my_str.index(start, offsetBy: n, limitedBy: my_str.endIndex) ?? my_str.endIndex
        return String(my_str[start..<end])
    }
}