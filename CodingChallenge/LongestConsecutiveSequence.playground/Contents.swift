import UIKit

class LongestConsecutiveSequence {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums), longest = 0
        
        for num in nums {
            if set.contains(num) {
                set.remove(num)
                let distance = 1 + findConsecutive(&set, num, 1) + findConsecutive(&set, num, -1)
                longest = max(longest, distance)
            }
        }
        
        return longest
    }
    
    private func findConsecutive(_ set: inout Set<Int>, _ num: Int, _ step: Int) -> Int {
        var len = 0, num = num + step
        
        while set.contains(num) {
            set.remove(num)
            len += 1
            num += step
        }
        
        return len
    }
}

print(LongestConsecutiveSequence().longestConsecutive([100, 4, 200, 1, 3, 2]))
