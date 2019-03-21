import UIKit

class IntersectionTwoArrays {
    func intersection(nums1: [Int], _ nums2: [Int]) -> [Int] {
        return [Int](Set<Int>(nums1).intersection(nums2))
    }
}

print(IntersectionTwoArrays().intersection(nums1: [1, 2, 2, 1], [2, 2]))

