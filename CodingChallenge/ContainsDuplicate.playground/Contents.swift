import UIKit

class ContainsDuplicate {
    func containsDuplicate(nums: [Int]) -> Bool {
        return nums.count > Set(nums).count
    }
}

print(ContainsDuplicate().containsDuplicate(nums: [2,3,-1,2]))
