/**
 * Question Link: https://leetcode.com/problems/two-sum-less-than-k/
 * Primary idea: Sort the arry and use two pointers to get the closest maximum value.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class TwoSumLessThanK {
    func twoSumLessThanK(_ A: [Int], _ K: Int) -> Int {
        let sorted = A.sorted()
        var left = 0, right = sorted.count - 1
        var closest = -1
        
        while left < right {
            if sorted[left] + sorted[right] < K {
                closest = max(sorted[left] + sorted[right], closest)
                left += 1
            } else {
                right -= 1
            }
        }
        return closest
    }
}

print(TwoSumLessThanK().twoSumLessThanK([34, 23, 1, 24, 75, 33, 54, 8], 60)) //58
print(TwoSumLessThanK().twoSumLessThanK([10, 20, 30], 15)) //-1
