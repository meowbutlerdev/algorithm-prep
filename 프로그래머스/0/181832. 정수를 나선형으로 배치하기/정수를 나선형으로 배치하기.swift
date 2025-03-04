import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: n), count: n)
    var value = 1, row = 0, col = 0
    var direction = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    var dirIdx = 0
    
    for _ in 1...(n * n) {
        result[row][col] = value
        value += 1
        
        let nextRow = row + direction[dirIdx].0
        let nextCol = col + direction[dirIdx].1
        
        if nextRow >= 0, nextRow < n, nextCol >= 0, nextCol < n, result[nextRow][nextCol] == 0 {
            row = nextRow
            col = nextCol
        } else {
            dirIdx = (dirIdx + 1) % 4
            row += direction[dirIdx].0
            col += direction[dirIdx].1
        }
    }
    
    return result
}