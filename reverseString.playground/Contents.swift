class Solution {
    func reverseString(_ s: inout [Character]) {
        return s.reverse()        
    }
}

var s:[Character] = ["h","e","l","l","o"]
Solution().reverseString(&s)
print(String(s))

var animals = ["fish", "cat", "chicken", "dog"]
animals.sort(by: <)
print(animals)
