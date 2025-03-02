import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    let userDict = Dictionary(uniqueKeysWithValues: db.map { ($0[0], $0[1]) })
    
    if let password = userDict[id_pw[0]] {
        return password == id_pw[1] ? "login" : "wrong pw"
    }
    
    return "fail"
}