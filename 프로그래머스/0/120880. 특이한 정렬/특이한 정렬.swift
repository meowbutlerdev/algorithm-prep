import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted {
        let dist0 = abs($0 - n)
        let dist1 = abs($1 - n)
        return dist0 == dist1 ? $0 > $1 : dist0 < dist1
    }
}