class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 { return nums.count }
        
        var index: Int = 1
        
        while index < nums.count {
            if nums[index] == nums[index - 1] {
                nums.remove(at: index)
            } else {
                index += 1
            }
        }
        return nums.count
    }
}

var nums = [1,1,2]
print("\(Solution().removeDuplicates(&nums)),  \(nums)")

nums = [0,0,1,1,1,2,2,3,3,4]
print("\(Solution().removeDuplicates(&nums)),  \(nums)")
