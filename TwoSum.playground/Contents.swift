//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func twoSum(array:[Int], sum:Int) -> Bool {
    for i in 0..<array.count {
        print("i=\(i)")
        for j in (i+1)..<array.count {
            print("i=\(i) j=\(j)")
            if array[i]+array[j] == sum {
                print("Found")
                return true
            } else {
                //return false
            }
        }
    }
    print("Not Found")
    return false
}

//twoSum(array: [1,3,4,4,5], sum: 10)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Binary search
func twoSumBinary(array:[Int], sum:Int) -> Bool {
    for i in 0..<array.count {
        let complement = sum - array[i]
        var tempArray = array
        tempArray.remove(at: i)
        let found = binarySearch(array: tempArray, key: complement)
        if found == true {
            print("found")
            return true
        }
    }
    print("Not Found")
    return false
}

//twoSumBinary(array: [1,3,4,4,5], sum: 2)

func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 { return false }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) is not in the array")
        return false
    }
    
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        print("\(key) found in the array")
        return true
    }
    
    return false
}

////////////////////////////////////////////////////////////////////////////////////////

//move pointer
func twoSumMovePointer  (array:[Int], sum:Int) -> Bool {
    var lowIndex = 0
    var highIndex = array.count - 1
    
    while lowIndex < highIndex {
        let lsum = array[lowIndex] + array[highIndex]
        if lsum == sum {
            print("found")
            return true
        } else if lsum > sum {
            highIndex -= 1
        } else {
            lowIndex += 1
        }
    }
    print("Not Found")
    return false
}

twoSumMovePointer(array: [1,3,4,4,5], sum: 8)

