class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var index1 = m - 1, index2 = n - 1
        var index = m + n - 1
        
        while index1 >= 0 && index2 >= 0 {
            if nums1[index1] > nums2[index2] {
                nums1[index] = nums1[index1]
                index1 -= 1
            } else {
                nums1[index] = nums2[index2]
                index2 -= 1
            }
            index -= 1
        }
        while index2 >= 0 {
            nums1[index2] = nums2[index2]
            index2 -= 1
        }
    }
}

var  nums1 = [2,9,10,0,0,0,0]
let m = 3, nums2 = [1,5,6,11], n = 4
Solution().merge(&nums1, m, nums2, n)
print(nums1)
