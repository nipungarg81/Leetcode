import Cocoa

func numUniqueEmails(_ emails: [String]) -> Int {
    var emailSet:Set<String> = []
    for s in emails{
        let address = s.components(separatedBy: "@")
        let bigname = address[0].components(separatedBy: "+").first
        print(bigname!)
        let name = bigname?.filter{$0 != "."}
        print(name!)
        emailSet.insert(name!+address.last!)
    }
    return emailSet.count
}

numUniqueEmails(["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"])

