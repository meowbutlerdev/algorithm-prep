import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return cipher.enumerated().filter { (idx, _) in (idx + 1) % code == 0 }
                              .map { String($0.1) }
                              .joined()
}