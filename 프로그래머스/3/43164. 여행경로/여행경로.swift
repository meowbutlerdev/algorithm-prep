import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var graph = [String: [String]]()
    
    for ticket in tickets {
        graph[ticket[0], default: []].append(ticket[1])
    }
    
    for key in graph.keys {
        graph[key]?.sort()
    }
    
    var route = [String]()
    
    func dfs(_ airport: String) {
        while let next = graph[airport]?.first {
            graph[airport]?.removeFirst()
            dfs(next)
        }
        route.append(airport)
    }
    
    dfs("ICN")
    return route.reversed()
}

