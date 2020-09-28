func countingSort(_ array: [Int])-> [Int] {
  guard array.count > 0 else {return []}

  // Step 1
  // Create an array to store the count of each element
  let maxElement = array.max() ?? 0

  var countArray = [Int](repeating: 0, count: Int(maxElement + 1))
  for element in array {
    countArray[element] += 1
  }
    print("step 1: \(countArray)")
  // Step 2
  // Set each value to be the sum of the previous two values
  for index in 1 ..< countArray.count {
    let sum = countArray[index] + countArray[index - 1]
    countArray[index] = sum
  }

  print("step 1: \(countArray)")

  // Step 3
  // Place the element in the final array as per the number of elements before it
  var sortedArray = [Int](repeating: 0, count: array.count)
  for element in array {
    countArray[element] -= 1
    sortedArray[countArray[element]] = element
  }
  return sortedArray
}

print(countingSort([ 10, 9, 8, 7, 1, 2, 7, 3 ]))
