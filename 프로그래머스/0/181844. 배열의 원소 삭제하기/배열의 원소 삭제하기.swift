import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    return arr.compactMap { delete_list.contains($0) ? nil : $0 }
}