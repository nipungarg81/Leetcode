import Cocoa

class FirstMissingPositive {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        
        nums.forEach { set.insert($0) }
        for i in 0..<nums.count {
            if !set.contains(i + 1) {
                return i + 1
            }
        }
        
        return nums.count + 1
    }
}

print(FirstMissingPositive().firstMissingPositive([1,2,3,3]))
print(FirstMissingPositive().firstMissingPositive([3,4,-1,1]))
print(FirstMissingPositive().firstMissingPositive([7,8,9,11,12]))
