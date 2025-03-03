import Foundation

func solution(_ quiz:[String]) -> [String] {
    return quiz.map { q in
        let parts = q.split(separator: " ")
        let x = Int(parts[0])!
        let op = parts[1]
        let y = Int(parts[2])!
        let z = Int(parts[4])!
                     
        return (op == "+" ? x + y : x - y) == z ? "O" : "X"
    }
}