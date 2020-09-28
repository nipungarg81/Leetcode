class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var oddCount:Int = 0
        var nums = A

        for index in 0..<nums.count {
            if nums[index] % 2 != 0 {
                oddCount += 1
                continue
            }
            swap(&nums, index, (index - oddCount))
        }
        return nums
    }
    
    func swap(_ nums: inout [Int], _ p:Int , _ q:Int) {
        if p <= (nums.count - 1) && q <= (nums.count - 1) {
            let num:Int = nums[q]
            nums[q] = nums[p]
            nums[p] = num
        }
    }
}

print(Solution().sortArrayByParity([3,1,2,4]))
