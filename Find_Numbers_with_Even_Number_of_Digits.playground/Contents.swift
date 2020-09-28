class Solution {
    func findNumbersWithEvenNumberOfDigits(_ nums: [Int]) -> Int {
        var count = 0

        for num in nums {
            let str = String(num);
            if str.count % 2 == 0 {
                count += 1;
            }
        }
        return count
//        return nums.map { String($0).count.isMultiple(of: 2) }.filter { $0 == true }.count
    }
}

print(Solution().findNumbersWithEvenNumberOfDigits([555,901,482,1771]))
print(Solution().findNumbersWithEvenNumberOfDigits([12,345,2,6,7896]))
