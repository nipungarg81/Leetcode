import UIKit

class A {
    var count:Int = 0
    var startIndex:Int = -1
    var length:Int = -1
}

func DegreeOfArray(myArray:[Int])->Int {
    // Create dictionary to map value to count
    var counts = [Int: A]()
    
    // Count the values with using forEach
    var maxElementCount:Int = -1
    for (index, element) in myArray.enumerated() {
        if counts[element] == nil {
            counts[element] = A()
        }
        counts[element]?.count = (counts[element]?.count)! + 1
        if maxElementCount < (counts[element]?.count)! {
            maxElementCount = element
        }
        
        if counts[element]?.startIndex == -1 {
            counts[element]?.startIndex = index
        } else {
            counts[element]?.length = index - (counts[element]?.startIndex)! + 1
        }
    }
    
    
    return counts[maxElementCount]?.length ?? 0
}

print(DegreeOfArray(myArray: [1,2,2,3,1,4,2]))
print(DegreeOfArray(myArray: [1, 2, 2, 3, 1]))


