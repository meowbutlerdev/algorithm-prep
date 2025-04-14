import Foundation

func solution(_ number: String, _ k: Int) -> String {
    var stack: [Character] = []
    var removeCount = k

    for digit in number {
        while removeCount > 0 && !stack.isEmpty && stack.last! < digit {
            stack.removeLast()
            removeCount -= 1
        }
        stack.append(digit)
    }

    let result = stack.prefix(number.count - k)
    return String(result)
}