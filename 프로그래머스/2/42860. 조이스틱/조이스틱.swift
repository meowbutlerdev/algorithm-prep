import Foundation

func solution(_ name:String) -> Int {
    let nameArray = Array(name)
    let moves = nameArray.map {
        Int(min($0.asciiValue! - Character("A").asciiValue!, 26 - ($0.asciiValue! - Character("A").asciiValue!)))
    }

    var minMove = nameArray.count - 1
    for i in nameArray.indices {
        var nextIndex = i + 1
        while nextIndex < nameArray.count && nameArray[nextIndex] == "A" {
            nextIndex += 1
        }
        let leftRightMoves = i + (nameArray.count - nextIndex) + min(i, nameArray.count - nextIndex)
        minMove = min(minMove, leftRightMoves)
    }

    return moves.reduce(0) { $0 + $1 } + minMove
}