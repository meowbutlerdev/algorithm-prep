import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    var q1 = queue1
    var q2 = queue2
    
    var sum1 = queue1.reduce(0, +)
    var sum2 = queue2.reduce(0, +)
    
    let target = (sum1 + sum2) / 2
    
    var index1 = 0
    var index2 = 0
    
    var count = 0
    for _ in 0..<((q1.count + q2.count) * 2) {
        if sum1 == target, sum2 == target {
            return count
        }
        
        if sum1 > target {
            let pop = q1[index1]
            sum1 -= pop
            sum2 += pop
            
            index1 += 1
            
            q2.append(pop)
        } else {
            let pop = q2[index2]
            sum1 += pop
            sum2 -= pop
            
            index2 += 1
            
            q1.append(pop)
        }
        
        count += 1
    }
    
    return -1
}