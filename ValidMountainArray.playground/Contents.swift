class Solution {
    func validMountainArray(_ A: [Int]) -> Bool {
        guard A.count >= 3, A[0] < A[1] else {
            return false
        }
        
        var isUp = true

        for index in 1..<(A.count - 1) {
            if isUp {
                if A[index] < A[index + 1] {
                    continue
                } else {
                    isUp = false
                }
            } else {
                if A[index] > A[index + 1] {
                    continue
                } else {
                    return false
                }
            }
        }
        
        return A[A.count - 2] > A[A.count - 1]
    }
}

print(Solution().validMountainArray([2,1]))
print(Solution().validMountainArray([3,5,4]))
print(Solution().validMountainArray([3,5,5]))
print(Solution().validMountainArray([3,5,4,5]))
print(Solution().validMountainArray([0,3,2,1]))
