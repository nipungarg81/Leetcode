import UIKit

let arr = [1, 2, 2, 2, 1, 3, 3, 4, 5, 5]
var counts: [Int: Int] = [:]

for item in arr {
    counts[item] = (counts[item] ?? 0) + 1
}

let sortedByValueDictionary = counts.sorted {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    } else {
        return $0.1 > $1.1
    }
}

let finalArray = sortedByValueDictionary.map {
    return $0.key
}
print(finalArray)
