import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    let reports = Set(report)
    var reportedCount = [String: Int]()
    var userReports = [String: [String]]()

    for entry in reports {
        let parts = entry.split(separator: " ").map(String.init)
        let reporter = parts[0]
        let reported = parts[1]
        reportedCount[reported, default: 0] += 1
        userReports[reporter, default: []].append(reported)
    }

    return id_list.map { user in
        guard let targets = userReports[user] else { return 0 }
        return targets.filter { reportedCount[$0, default: 0] >= k }.count
    }
}