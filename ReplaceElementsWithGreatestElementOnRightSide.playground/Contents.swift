func replaceElements(_ arr: [Int]) -> [Int] {
    var result = [-1]
    
    for i in (1..<arr.count).reversed() {
        result.insert(max(result[0], arr[i]), at: 0)
    }
    return result
}


print(replaceElements([17,18,5,4,6,1]))
