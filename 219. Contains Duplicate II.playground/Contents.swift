import Cocoa

class ContainsDuplicate {
    func containsDuplicate(_ array:[Int], _ k:Int) -> Bool {
        if nums.count <= 1 {
            return false
        }
        
        var i=0
        var j=i+k
        while(j<array.count) {
            if(array[i] == array[j]) {
                return true
            }
            i += 1
            j += 1
        }
        return false
    }
}

print(ContainsDuplicate().containsDuplicate([1,2,3,1], 3))
print(ContainsDuplicate().containsDuplicate([1,0,1,1], 1))
print(ContainsDuplicate().containsDuplicate([1,2,3,1,2,3], 2))
