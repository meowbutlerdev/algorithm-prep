import Foundation

func solution(_ myString:String) -> String {
    return myString.map { $0.asciiValue! < Character("l").asciiValue! ? "l" : String($0) }.joined()
}