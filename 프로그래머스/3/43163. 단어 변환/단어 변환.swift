import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var queue = [(begin, 0)]
    var visited = Set<String>()
    
    while !queue.isEmpty {
        let (current, steps) = queue.removeFirst()
        
        if current == target { return steps }
        
        for word in words {
            if isDifferent(current, word) && !visited.contains(word){
                queue.append((word, steps + 1))
                visited.insert(word)
            }
        }
    }
    
    return 0
}

func isDifferent(_ a: String, _ b: String) -> Bool {
    zip(a, b).filter { $0 != $1 }.count == 1
}