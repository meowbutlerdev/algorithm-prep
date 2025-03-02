import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var position = [0, 0]
    let bounds = [board[0] / 2, board[1] / 2]
    
    for key in keyinput {
        switch key {
        case "up": position[1] = min(bounds[1], position[1] + 1)
        case "down": position[1] = max(-bounds[1], position[1] - 1)
        case "left": position[0] = max(-bounds[0], position[0] - 1)
        case "right": position[0] = min(bounds[0], position[0] + 1)
        default: break
        }
    }
    return position
}