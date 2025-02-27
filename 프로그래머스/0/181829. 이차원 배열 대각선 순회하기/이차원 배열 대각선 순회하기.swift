import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    var sum = 0
    let boardRow = board.count
    let boardCol = board[0].count
    for row in 0..<min(boardRow, k + 1) {
        for col in 0..<min(boardCol, k + 1 - row) {
            sum += board[row][col]
        }
    }
    return sum
}