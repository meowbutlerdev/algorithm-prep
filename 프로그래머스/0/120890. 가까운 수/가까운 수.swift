import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.min(by: {
        let diff1 = abs($0 - n)
        let diff2 = abs($1 - n)
        return diff1 < diff2 || (diff1 == diff2 && $0 < $1)
    })!
}