import Foundation

func solution(_ my_string:String) -> String {
    var exist = Set<Character>()
    return my_string.filter { exist.insert($0).inserted }
}