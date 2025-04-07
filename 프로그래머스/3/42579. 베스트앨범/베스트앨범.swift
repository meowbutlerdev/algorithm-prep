import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var genreCount: [String: Int] = [:]
    var songs: [String: [(Int, Int)]] = [:]
    
    for (index, genre) in genres.enumerated() {
        genreCount[genre, default: 0] += plays[index]
        songs[genre, default: []].append((index, plays[index]))
    }
    
    for genre in songs.keys {
        songs[genre]?.sort {
            if $0.1 == $1.1 {
                return $0.0 < $1.0
            }
            
            return $0.1 > $1.1
        }
    }
    
    let sortedGenre = genreCount.sorted { $0.value > $1.value }.map { $0.key }
    
    var result: [Int] = []
    
    for genre in sortedGenre {
        let song = songs[genre]?.prefix(2) ?? []
        result.append(contentsOf: song.map { $0.0 })
    }
    
    return result
}