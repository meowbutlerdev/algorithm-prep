import Foundation

func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
        let discountRates = [10, 20, 30, 40]
    var maxSubscribers = 0
    var maxRevenue = 0

    func dfs(depth: Int = 0, discounts: [Int] = []) {
        if depth == emoticons.count {
            var currentSubscribers = 0
            var currentRevenue = 0

            for user in users {
                let minRate = user[0]
                let maxPrice = user[1]
                var totalCost = 0

                for (index, discount) in discounts.enumerated() {
                    if discount >= minRate {
                        let discountedPrice = emoticons[index] * (100 - discount) / 100
                        totalCost += discountedPrice
                    }
                }

                if totalCost >= maxPrice {
                    currentSubscribers += 1
                } else {
                    currentRevenue += totalCost
                }
            }

            if currentSubscribers > maxSubscribers ||
               (currentSubscribers == maxSubscribers && currentRevenue > maxRevenue) {
                maxSubscribers = currentSubscribers
                maxRevenue = currentRevenue
            }

            return
        }

        for rate in discountRates {
            dfs(depth: depth + 1, discounts: discounts + [rate])
        }
    }

    dfs()
    return [maxSubscribers, maxRevenue]
}