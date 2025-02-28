import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    let range = myString.range(of: pat, options: .backwards)!
    return String(myString[..<range.upperBound])
}