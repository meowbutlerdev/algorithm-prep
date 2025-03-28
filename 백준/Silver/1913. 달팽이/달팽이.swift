let n = Int(readLine()!)!
let target = Int(readLine()!)!

var snail = Array(repeating: Array(repeating: 0, count: n), count: n)
var x = n / 2, y = n / 2
var num = 1
var direction = 0
var step = 1
var coordinates = (0, 0)

snail[x][y] = num
if num == target { coordinates = (x + 1, y + 1) }
num += 1

while num <= n * n {
    for _ in 0..<step {
        switch direction {
        case 0: x -= 1
        case 1: y += 1
        case 2: x += 1
        case 3: y -= 1
        default: break
        }

        snail[x][y] = num
        if num == target { coordinates = (x + 1, y + 1) }
        num += 1
        if num > n * n { break }
    }

    direction = (direction + 1) % 4
    if direction == 0 || direction == 2 { step += 1 }
}

snail.forEach { print($0.map { String($0) }.joined(separator: " ")) }
print(coordinates.0, coordinates.1)