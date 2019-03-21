import Cocoa

class IntersectTwoArray {
    func intersectTwoArray(_ array1:[Int], _ array2:[Int]) -> [Int] {
        return [Int] (Set(array1).intersection(array2))
    }
}

print(IntersectTwoArray().intersectTwoArray([1,2,2,1], [2,2]))
print(IntersectTwoArray().intersectTwoArray([4,9,5], [9,4,9,8,4]))


class UnionTwoArray {
    func unionTwoArray(_ array1:[Int], _ array2:[Int]) -> [Int] {
        return [Int] (Set(array1).union(array2))
    }
}

print(UnionTwoArray().unionTwoArray([1,2,2,1], [2,2]))
print(UnionTwoArray().unionTwoArray([4,9,5], [9,4,9,8,4]))
