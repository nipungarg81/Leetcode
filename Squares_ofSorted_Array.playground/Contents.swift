class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var res = [Int](repeating: 0, count: A.count)
        var index = A.count - 1
        var left = 0
        var right = A.count - 1

        while left <= right {
            let a = A[left] * A[left]
            let b = A[right] * A[right]
            if a > b {
                res[index] = a
                index -= 1
                left += 1
            } else {
                res[index] = b
                index -= 1
                right -= 1
            }
        }
        return res
//        return A.map { $0 * $0 }.sorted()
    }
}

print(Solution().sortedSquares([-4,-1,0,3,10]))
print(Solution().sortedSquares([-7,-3,2,3,11]))

