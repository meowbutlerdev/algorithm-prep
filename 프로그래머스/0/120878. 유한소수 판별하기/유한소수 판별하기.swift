import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var denominator = b / gcd(a, b)
    
    while denominator % 2 == 0 {
        denominator /= 2
    }
    while denominator % 5 == 0 {
        denominator /= 5
    }
    
    return denominator == 1 ? 1 : 2
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var x = a
    var y = b
    while y != 0 {
        let temp = y
        y = x % y
        x = temp
    }
    return x
}