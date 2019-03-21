import UIKit

func rotateArray(nums:inout [Int], k: Int) {
    guard nums.count > 0 , nums.count != k else {
        return
    }
    guard k > 0 else {
        return
    }
    
    let k = k % nums.count
    nums = Array(nums[(nums.count-k)..<nums.count]) + Array(nums[0..<nums.count-k])
}
var nums = [2,1,4,5,6,9,7,9]
rotateArray(nums: &nums, k: 7)
print(nums)
