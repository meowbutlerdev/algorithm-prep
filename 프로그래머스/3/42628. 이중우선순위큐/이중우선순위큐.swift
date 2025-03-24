import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue: [Int] = []

    operations.forEach { operation in
        let op = operation.split(separator: " ")
        switch op[0] {
        case "I":
            if let number = Int(op[1]) { queue.append(number) }
        case "D" where !queue.isEmpty:
            if op[1] == "1" { queue.remove(at: queue.firstIndex(of: queue.max()!)!) }
            else if op[1] == "-1" { queue.remove(at: queue.firstIndex(of: queue.min()!)!) }
        default: break

        }
    }

    return queue.isEmpty ? [0, 0] : [queue.max()!, queue.min()!]
}