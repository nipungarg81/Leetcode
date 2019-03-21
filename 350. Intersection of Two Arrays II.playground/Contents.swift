import Cocoa

class IntersectionTwoArrays {
    func intersectionTwoArrays(_ array1:[Int], _ array2:[Int]) -> [Int] {
        var result:[Int] = [Int]()
        var a = array2
        for num in array1 {
            if a.contains(num) {
                result.append(num)
                a.remove(at: a.firstIndex(of: num)!)
            }
        }
        return result
    }
}

print(IntersectionTwoArrays().intersectionTwoArrays([1,2,2,1], [2,2]))
print(IntersectionTwoArrays().intersectionTwoArrays([4,9,5], [9,4,9,8,4]))
