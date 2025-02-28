import Foundation

func solution(_ arr:[Int]) -> Int {
    var current = arr
    var isChange = true
    var count = 0
    
    while isChange {
        isChange = false
        for i in current.indices {
            let num = current[i]
            let newNum = num >= 50 && num % 2 == 0 ? num / 2 :
                         num < 50 && num % 2 == 1 ? num * 2 + 1 :
                         num
            if newNum != num {
                current[i] = newNum
                isChange = true
            }
        }
        if isChange { count += 1 }
    }
    
    return count
}