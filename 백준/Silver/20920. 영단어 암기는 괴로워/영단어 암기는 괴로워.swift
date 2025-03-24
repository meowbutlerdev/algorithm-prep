let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (input[0], input[1])

var wordCount: [String: Int] = [:]
(0..<n).forEach { _ in
    let word = readLine()!
    if word.count >= m {
        wordCount[word, default: 0] += 1
    }
}

let priority = wordCount
    .sorted {
        $0.value == $1.value
            ? $0.key.count == $1.key.count
                ? $0.key < $1.key
                : $0.key.count > $1.key.count
            : $0.value > $1.value
    }
    .map { $0.key }

priority.forEach { print($0) }
