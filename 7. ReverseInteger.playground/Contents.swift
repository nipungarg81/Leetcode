import UIKit

//7. Reverse Integer
func reverse(_ x: Int) -> Int {
    
    var reversedXArr = [String]()
    reversedXArr = String(x).map{ "\($0)" }.reversed()
    if x >= 0 {
        if let r = Int32(reversedXArr.joined()) {
            return Int(r)
        } else {
            return 0
        }
    } else {
        reversedXArr.remove(at: reversedXArr.count - 1)
        reversedXArr.insert("-", at: 0)
        if  let r = Int32(reversedXArr.joined()) {
            return Int(r)
        } else {
            return 0
        }
    }
}

print(reverse(-123))
print(reverse(123))
print(reverse(0123))
print(reverse(01230))
