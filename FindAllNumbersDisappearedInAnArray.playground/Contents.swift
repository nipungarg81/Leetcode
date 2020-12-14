class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var returnVal = Array(repeating: 0, count: nums.count)
        for i in 1..<(returnVal.count + 1 ){
            returnVal[i-1] = i
        }
        
        for num in nums {
            returnVal[num - 1] = -1
        }
        
        returnVal.removeAll { $0 == -1 }
        return returnVal
    }
}

print(Solution().findDisappearedNumbers([4,3,2,7,8,2,3,1,5,10]))
