import Cocoa

func newJewlInSto(J:String, S:String) -> Int {
    var hash = [Character:Int]()
    var count = 0
    J.forEach{c in hash[c] = 1}
    
    S.forEach{c in
        if let _ = hash[c] {
            count += 1
        }
    }
    return count
}

newJewlInSto(J:"aA", S:"aAAbbbb")
newJewlInSto(J:"z", S:"ZZ")
