import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    let numerator = numer1 * denom2 + numer2 * denom1
    let denominator = denom1 * denom2
    let gcdValue = gcd(numerator, denominator)
    
    return [numerator / gcdValue, denominator / gcdValue]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}