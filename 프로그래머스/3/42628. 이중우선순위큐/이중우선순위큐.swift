import Foundation
struct Heap {
    private var elements: [Int] = []
    private let sort: (Int, Int) -> Bool

    init(sort: @escaping (Int, Int) -> Bool) {
        self.sort = sort
    }

    var isEmpty: Bool { elements.isEmpty }
    var count: Int { elements.count }
    var first: Int? { elements.first }

    mutating func insert(_ value: Int) {
        elements.append(value)
        siftUp(from: elements.count - 1)
    }

    mutating func remove() -> Int? {
        guard !elements.isEmpty else { return nil }
        elements.swapAt(0, elements.count - 1)
        let value = elements.removeLast()
        siftDown(from: 0)
        return value
    }

    private mutating func siftUp(from index: Int) {
        var child = index
        var parent = (child - 1) / 2
        while child > 0 && sort(elements[child], elements[parent]) {
            elements.swapAt(child, parent)
            child = parent
            parent = (child - 1) / 2
        }
    }

    private mutating func siftDown(from index: Int) {
        var parent = index
        let count = elements.count
        while true {
            let left = 2 * parent + 1
            let right = 2 * parent + 2
            var candidate = parent

            if left < count && sort(elements[left], elements[candidate]) {
                candidate = left
            }
            if right < count && sort(elements[right], elements[candidate]) {
                candidate = right
            }

            if candidate == parent {
                return
            }
            elements.swapAt(parent, candidate)
            parent = candidate
        }
    }
}

func solution(_ operations: [String]) -> [Int] {
    var maxHeap = Heap(sort: >)
    var minHeap = Heap(sort: <)
    var countMap = [Int: Int]()

    for operation in operations {
        let components = operation.split(separator: " ")
        let command = components[0]
        guard components.count == 2, let number = Int(components[1]) else { continue }

        if command == "I" {
            maxHeap.insert(number)
            minHeap.insert(number)
            countMap[number, default: 0] += 1
        } else if command == "D" {
            if number == 1 {
                while let max = maxHeap.first, countMap[max] == 0 { maxHeap.remove() }
                if let max = maxHeap.remove() { countMap[max]! -= 1 }
            } else if number == -1 {
                while let min = minHeap.first, countMap[min] == 0 { _ = minHeap.remove() }
                if let min = minHeap.remove() { countMap[min]! -= 1 }
            }
        }
    }

    while let max = maxHeap.first, countMap[max] == 0 { maxHeap.remove() }
    while let min = minHeap.first, countMap[min] == 0 { minHeap.remove() }

    if maxHeap.isEmpty || minHeap.isEmpty { return [0, 0] }
    else { return [maxHeap.first!, minHeap.first!] }
}