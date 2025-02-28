import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk = ContiguousArray<Int>()
    
    for num in arr {
        if let last = stk.last, last == num {
            stk.removeLast()
        } else {
            stk.append(num)
        }
    }
    
    return stk.isEmpty ? [-1] : Array(stk)
}