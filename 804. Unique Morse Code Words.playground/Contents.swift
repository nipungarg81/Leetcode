import Cocoa

func uniqueMorseRepresentations(_ words: [String]) -> Int {
    let morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    var result = Set<String>()
    for word in words {
        var curr = ""
        for c in word {
            print("\(c.unicodeScalars)   \(c.unicodeScalars.first!)   \(c.unicodeScalars.first!.value)")
            let num = Int(c.unicodeScalars.first!.value) - 97
            print(num)
            curr += morse[num]
        }
        result.insert(curr)
    }
    return result.count
}


print(uniqueMorseRepresentations(["gin", "zen", "gig", "msg"]))
