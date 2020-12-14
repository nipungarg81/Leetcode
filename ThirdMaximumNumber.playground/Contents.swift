class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        let sorted = Set(nums).sorted(by: {$1 < $0})
        return sorted.count >= 3 ? sorted[2] : sorted[0]
    }
}

print(Solution().thirdMax([3, 2, 1]))
print(Solution().thirdMax([1, 2]))
print(Solution().thirdMax([2, 2, 3, 1]))
