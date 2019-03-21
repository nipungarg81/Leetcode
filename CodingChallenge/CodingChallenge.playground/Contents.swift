import UIKit

var str = "Hello, playground"

//https://www.hackingwithswift.com/files/swift-coding-challenges-sample.pdf

//Are the letters unique?
func uniqueLetter(_ str: String) -> Bool {
    var characters:[Character] = [Character]()
    for letter in str {
        if characters.contains(letter) {
            return false
        }
        characters.append(letter)
    }
    return true
}

func challenge1b(_ input: String) -> Bool {
    return Set(input).count == input.count
}

challenge1b("abcdefghijklmnopqrstuvwxyz")
challenge1b("AaBbCc")
challenge1b("Hello, world")

//////////////////////////////////////////////////////////////////////////////////////////

//Is a string a palindrome?
func challenge2a(_ input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}
challenge2a("Rats live on no evil star")
challenge2a("Never odd or even")
challenge2a("Hello, world")

//////////////////////////////////////////////////////////////////////////////////////////

//Do two strings contain the same characters?
func challenge3b(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}
challenge3b(string1: "abca", string2: "abca")
challenge3b(string1: "abc", string2: "cba")
challenge3b(string1: "a1 b2", string2: "b1 a2")
challenge3b(string1: "abc", string2: "abca")
challenge3b(string1: "abc", string2: "Abc")
challenge3b(string1: "abc", string2: "cbAa")
challenge3b(string1: "abcc", string2: "abca")

//////////////////////////////////////////////////////////////////////////////////////////

//Does one string contain another?
extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return self.lowercased().range(of: string.lowercased()) != nil
    }
}

"Hello, world".fuzzyContains("Hello")
"Hello, world".fuzzyContains("WORLD")
"Hello, world".fuzzyContains("Goodbye")

//////////////////////////////////////////////////////////////////////////////////////////

//Count the characters
func challenge5b(input: String, count: Character) -> Int {
    return input.reduce(0) {
        $1 == count ? $0 + 1 : $0
    }
}

print(challenge5b(input:"The rain in Spain", count:"a"))

//////////////////////////////////////////////////////////////////////////////////////////

//Remove duplicate letters from a string
func challenge6b(_ string: String) -> String {
    let array = string.map { String($0) }
    let set = NSOrderedSet(array: array)
    let letters = Array(set) as! Array<String>
    return letters.joined()
}

challenge6b("wombat")
challenge6b("hello")

//////////////////////////////////////////////////////////////////////////////////////////

//Condense whitespace
func challenge7(_ input: String) -> String {
    let components = input.components(separatedBy: .whitespacesAndNewlines)
    print(components)
    print(components.filter { !$0.isEmpty })
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}
challenge7("a    b      c")
challenge7("      ")
challenge7("  a    ")

//////////////////////////////////////////////////////////////////////////////////////////

//String is rotated
func challenge8(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else {
        return false
    }
    let combined = input + input
    return combined.contains(rotated)
}
challenge8(input: "abcde", rotated: "eabcd")
challenge8(input: "abcde", rotated: "cdeab")
challenge8(input: "abcde", rotated: "abced")
challenge8(input: "abc", rotated: "a")
