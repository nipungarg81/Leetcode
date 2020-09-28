class Solution {
    func swap(_ nums: inout [Int], _ p:Int , _ q:Int) {
        if p <= (nums.count - 1) && q <= (nums.count - 1) {
            let num:Int = nums[q]
            nums[q] = nums[p]
            nums[p] = num
        }
    }
    
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCount:Int = 0

        for index in 0..<nums.count {
            if nums[index] == 0 {
                zeroCount += 1
                continue
            }
            swap(&nums, index, (index - zeroCount))
        }
    }
}

var a = [0,1,0,0,3,0,12]
Solution().moveZeroes(&a)
print(a)
