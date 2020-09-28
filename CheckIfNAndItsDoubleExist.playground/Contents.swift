class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var set = Set<Int>()
        
        for num in arr {
            if set.contains(2 * num) || (num % 2 == 0 && set.contains(num / 2)) {
               return true
            }
            set.insert(num)
        }
        return false
    }
}

print(Solution().checkIfExist([10,2,5,3]))
print(Solution().checkIfExist([7,1,14,11]))
print(Solution().checkIfExist([3,1,7,11]))
