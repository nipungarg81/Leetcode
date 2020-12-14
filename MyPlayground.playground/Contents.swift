//import UIKit
//
//var str = "Hello, playground"
//
//if let s = String.init("sd")
//{
//    print(s)
//}

var x: Int?
let y = x ?? 5
print(y)

let a = (name: "aa", val: 5)
let test = a.0

let b: [Any] = [1, "2", "three"]
let c = b.reduce("") {"\("$0") + \("$1")"}
print(c)
