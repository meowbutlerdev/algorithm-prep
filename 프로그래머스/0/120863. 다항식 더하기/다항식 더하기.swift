import Foundation

func solution(_ polynomial:String) -> String {
    var xTerm = 0
    var constant = 0
    
    for term in polynomial.split(separator: " ").filter({ $0 != "+" }) {
        if term.contains("x") {
            let coefficient = term == "x" ? 1 : Int(term.replacingOccurrences(of: "x", with: ""))!
            xTerm += coefficient
        } else {
            constant += Int(term)!
        }
    }
    
    if xTerm == 0 { return "\(constant)" }
    if constant == 0 { return xTerm == 1 ? "x" : "\(xTerm)x" }
    return xTerm == 1 ? "x + \(constant)" : "\(xTerm)x + \(constant)"
}