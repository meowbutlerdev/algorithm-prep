import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    if numbers.isEmpty { return target == 0 ? 1 : 0 }
    
    let first = numbers.first!
    let rest = Array(numbers.dropFirst())
    
    return solution(rest, target - first) + solution(rest, target + first)
}