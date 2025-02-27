import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    return date1.lexicographicallyPrecedes(date2) ? 1 : 0
}