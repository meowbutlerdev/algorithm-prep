import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let xs = dots.map { $0[0] }
    let ys = dots.map { $0[1] }
    
    let width = xs.max()! - xs.min()!
    let height = ys.max()! - ys.min()!
    
    return width * height
}