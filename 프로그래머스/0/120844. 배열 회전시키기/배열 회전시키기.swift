import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    return direction == "right" ? [numbers.last!] + numbers.dropLast()
                                : numbers.dropFirst() + [numbers.first!]
}