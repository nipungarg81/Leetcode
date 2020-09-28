class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var globalMax = 0
        var localMax = 0

        for num in nums {
            localMax *= num
            localMax += num
            globalMax = max(globalMax, localMax)
        }
        return globalMax
    }
}

print(Solution().findMaxConsecutiveOnes([1,1,0,1,1,1]))
