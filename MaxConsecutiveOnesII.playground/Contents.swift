class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var result = 0
        var counter = 0

        for num in nums {
            counter += num == 1 ? num : 0
            counter = num == 0 ? 0: counter
            result = counter < result ? result : counter
        }
        return result
    }
    
    
    func findMaxConsecutiveOnesII(_ nums: [Int]) -> Int {
        var res = 0, cur = 0, cnt = 0;
        for num in nums {
            cnt += 1;
            if (num == 0) {
                cur = cnt;
                cnt = 0;
            }
            res = max(res, cnt + cur);
        }
        return res;
    }
}

print(Solution().findMaxConsecutiveOnesII([0,1,1,1,0,0,1,1]))
