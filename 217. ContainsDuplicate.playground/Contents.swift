import Cocoa

class ContainsDuplicate {
    func containsDuplicate(_ array:[Int]) -> Bool {
        return array.count != Set(array).count
    }
}

print(ContainsDuplicate().containsDuplicate([1,2,3,4]))
print(ContainsDuplicate().containsDuplicate([1,2,3,0,0]))
