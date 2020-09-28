class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var index = 0
        while index < arr.count {
            if arr[index] == 0 {
                index += 1
                arr.insert(0, at: index)
                arr.removeLast()
            }
            index += 1
        }
    }
    
    func duplicateZeros0(_ arr: inout [Int]) {
        arr = Array(arr.flatMap({ $0 == 0 ? [0, 0] : [$0] })[0..<arr.count])
    }
}

var array = [1,0,2,3,0,4,5,0]
Solution().duplicateZeros(&array)
print(array)

array = [1,2,3]
Solution().duplicateZeros(&array)
print(array)
