import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let todayComponents = today.split(separator: ".").compactMap { Int($0) }
    let todayTotalDays = todayComponents[0] * 12 * 28 + todayComponents[1] * 28 + todayComponents[2]

    let termDict = Dictionary<String, Int>(uniqueKeysWithValues: terms.map {
        let parts = $0.split(separator: " ")

        return (String(parts[0]), Int(parts[1])! * 28)
    })

    return privacies.enumerated().compactMap { (index, privacy) in
        let parts = privacy.split(separator: " ")
        let date = parts[0].split(separator: ".").compactMap { Int($0) }
        let day = date[0] * 12 * 28 + date[1] * 28 + date[2]
        let term = String(parts[1])

        return todayTotalDays - day >= termDict[term, default: 0] ? index + 1 : nil
    }
}