import Foundation

func solution(_ dots:[[Int]]) -> Int {
    func getSlope(_ p1: [Int], _ p2: [Int]) -> Double {
        return Double(p2[1] - p1[1]) / Double(p2[0] - p1[0])
    }
    
    let pairs = [
        (0, 1, 2, 3),
        (0, 2, 1, 3),
        (0, 3, 1, 2)
    ]
    
    for (a, b, c, d) in pairs {
        if getSlope(dots[a], dots[b]) == getSlope(dots[c], dots[d]) {
            return 1
        }
    }
    
    return 0
}