import UIKit

func firstBadVersion(_ n: Int) -> Int {
    var left = 1
    var right = n
    var middle = 0
    
    while left < right {
        middle = left + (right - left) / 2
        
        if !isBadVersion(middle) {
            left = middle + 1
        } else {
            right = middle
        }
        print("mm \(middle) \(left) \(right)")
    }
    
    return left
}

func isBadVersion(_ version: Int) -> Bool{
    if version >= 5 {
        return true
    }
    return false
}

print(firstBadVersion(6))
print(firstBadVersion(7))
print(firstBadVersion(100))
print(firstBadVersion(5))
