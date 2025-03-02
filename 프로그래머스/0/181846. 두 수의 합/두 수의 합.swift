import Foundation

func solution(_ a:String, _ b:String) -> String {
    let aArr = Array(a.reversed()).map { Int(String($0))! }
    let bArr = Array(b.reversed()).map { Int(String($0))! }
    
    var carry = 0
    var result: [String] = []
    let maxLength = max(aArr.count, bArr.count)
    
    for i in 0..<maxLength {
        let digitA = i < aArr.count ? aArr[i] : 0
        let digitB = i < bArr.count ? bArr[i] : 0
        let sum = digitA + digitB + carry
        
        result.append(String(sum % 10))
        carry = sum / 10
    }
    
    if carry > 0 {
        result.append(String(carry))
    }
    
    return result.reversed().joined()
}