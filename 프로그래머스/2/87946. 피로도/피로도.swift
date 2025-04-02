import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var exploration = 0
    var visited = Array(repeating: false, count: dungeons.count)
    
    func dfs(_ fatigue: Int, _ steps: Int = 0) {
        exploration = max(exploration, steps)
        
        for i in 0..<dungeons.count {
            if !visited[i], fatigue >= dungeons[i][0] {
                visited[i] = true
                dfs(fatigue - dungeons[i][1], steps + 1)
                visited[i] = false
            }
        }
    }
    
    dfs(k)
    
    return exploration
}