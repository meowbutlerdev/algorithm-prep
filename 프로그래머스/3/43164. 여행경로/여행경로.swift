import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var graph = [String: [String]]()
    var result = [String]()
    
    for ticket in tickets {
        let from = ticket[0]
        let to = ticket[1]
        graph[from, default: []].append(to)
    }
    
    for key in graph.keys {
        graph[key]?.sort(by: >)
    }
    
    func dfs(_ airport: String) {
        while let destinations = graph[airport], !destinations.isEmpty {
            let next = graph[airport]!.removeLast()
            dfs(next)
        }
        result.append(airport)
    }
    
    dfs("ICN")
    
    return result.reversed()
}

