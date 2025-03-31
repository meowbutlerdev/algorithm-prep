import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let area = brown + yellow
    for height in 1...Int(sqrt(Double(area))) {
        if area % height == 0 {
            let width = area / height
            if (width - 2) * (height - 2) == yellow {
                return [width, height]
            }
        }
    }
    
    return []
}