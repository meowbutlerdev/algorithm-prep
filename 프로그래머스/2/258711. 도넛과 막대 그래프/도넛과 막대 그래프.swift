import Foundation

func solution(_ edges:[[Int]]) -> [Int] {
    var start = 0
    var donut = 0
    var bar = 0
    var eight = 0

    let count = edges.flatMap { $0 }.max() ?? 0

    var inEdges = Array(repeating: 0, count: count + 1)
    var outEdges = Array(repeating: 0, count: count + 1)

    for edge in edges {
        inEdges[edge[1]] += 1
        outEdges[edge[0]] += 1
    }

    for i in 1...count {
        if inEdges[i] == 0, outEdges[i] >= 2 {
            start = i
        } else if inEdges[i] >= 1, outEdges[i] == 0 {
            bar += 1
        } else if inEdges[i] >= 2, outEdges[i] == 2 {
            eight += 1
        }
    }

    donut = outEdges[start] - bar - eight

    return [start, donut, bar, eight]
}