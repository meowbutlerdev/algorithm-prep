import Foundation

func solution(_ price:Int) -> Int {
    let discount: Double = price >= 500000 ? 0.8 :
                           price >= 300000 ? 0.9 :
                           price >= 100000 ? 0.95 : 1.0
    return Int(Double(price) * discount)
}