import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var lineCoverage = Array(repeating: 0, count: 201)
    
    for line in lines {
        let start = line[0] + 100
        let end = line[1] + 100
        
        for i in start..<end {
            lineCoverage[i] += 1
        }
    }
    
    return lineCoverage.filter { $0 > 1 }.count
}