import Foundation

func solution(_ n: Int, _ edge: [[Int]]) -> Int {
    var graph = Array(repeating: [Int](), count: n + 1)
    edge.forEach {
        graph[$0[0]].append($0[1])
        graph[$0[1]].append($0[0])
    }

    var visited = Array(repeating: false, count: n + 1)
    var distance = Array(repeating: 0, count: n + 1)
    var queue: [Int] = [1]
    visited[1] = true

    var front = 0
    var maxDistance = 0
    var count = 0
    while front < queue.count {
        let current = queue[front]
        front += 1

        graph[current].forEach {
            if !visited[$0] {
                visited[$0] = true
                distance[$0] = distance[current] + 1
                queue.append($0)

                if distance[$0] > maxDistance {
                    maxDistance = distance[$0]
                    count = 1
                } else if distance[$0] == maxDistance {
                    count += 1
                }
            }
        }
    }

    return count
}