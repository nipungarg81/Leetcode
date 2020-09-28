class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        let sorted = heights.sorted()
        var count = 0
        for i in 0..<heights.count {
            if heights[i] != sorted[i] {
                count += 1
            }
        }
        return count
    }
}

print(Solution().heightChecker([1,1,4,2,1,3]))
print(Solution().heightChecker([5,1,2,3,4]))
print(Solution().heightChecker([1,2,3,4,5]))
