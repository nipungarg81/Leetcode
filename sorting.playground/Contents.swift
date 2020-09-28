class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var res = [Int](repeating: 0, count: A.count)
        var index = A.count - 1
        var left = 0
        var right = A.count - 1

        while left <= right {
            if A[left] > A[right] {
                res[index] = A[left]
                index -= 1
                left += 1
            } else {
                res[index] = A[right]
                index -= 1
                right -= 1
            }
        }
        return res
    }
}

print(Solution().sortedSquares([0,1,-1,-4,-3]))
print(Solution().sortedSquares([3,2,-4,10,-10]))
