import UIKit

let inputStr = "hello world? i love apple."
let splitStr = inputStr.split{ [".", "?"].contains(String($0)) }

var finalStr:String = ""
for sStr in splitStr {
    let splitSpaceStr = sStr.split(separator: " ")
    let space = " "
    for i in (0..<splitSpaceStr.count).reversed() {
        finalStr += "\(splitSpaceStr[i])"
        if i != 0 {
            finalStr += space
        }
        
    }
    finalStr += ". "
}

print(finalStr)

