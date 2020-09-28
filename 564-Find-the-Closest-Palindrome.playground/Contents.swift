/**
 * Question Link: https://leetcode.com/problems/find-the-closest-palindrome/
 * Primary idea: Five possible cases -- the numbers with digits less or greater than current number;
 *                  the numbers with same digits' number but replication of the mutation
 *                  (+1 or -1 if the original number itself is palindrome) of the first half.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class FindClosestPalindrome {
    func nearestPalindromic(_ n: String) -> String {
        let chars = Array(n)
        var candidates = Set<String>()
        
        candidates.insert(buildLeftNum(n))
        candidates.insert(buildRightNum(n))
        print(candidates)
        
        for distance in -1...1 {
            candidates.insert(buildPalindromeOnMiddle(chars, distance))
        }
        print(candidates)
        
        return findNearest(n, candidates)
    }
    
    private func buildLeftNum(_ num: String) -> String {
        return String(repeating: "9", count: num.count - 1)
    }
    
    private func buildRightNum(_ num: String) -> String {
        return "1" + String(repeating: "0", count: num.count - 1) + "1"
    }

    private func buildPalindromeOnMiddle(_ n: [Character], _ distance: Int) -> String {
        let middleIdx = n.count % 2 == 0 ? n.count / 2 - 1: n.count / 2
        let leftPart = String(Int(String(n[0...middleIdx]))! + distance)
        print("leftPart \(leftPart)")
        if n.count % 2 != 0 {
            print("String(leftPart.dropLast() + leftPart.reversed()) \(String(leftPart.dropLast() + leftPart.reversed()))")
            return String(leftPart.dropLast() + leftPart.reversed())
        } else {
            print("String(leftPart + leftPart.reversed()) \(String(leftPart + leftPart.reversed()))")
            return String(leftPart + leftPart.reversed())
        }
    }
    
    private func findNearest(_ n: String, _ candidates: Set<String>) -> String {
        guard let num = Int(n) else {
            fatalError("Invalid Input")
        }
    
        print("num \(num)")
        var nearest = 0
    
        for candidate in candidates {
            guard let cNum = Int(candidate) else {
                continue
            }
            if cNum == num {
                continue
            }
        
            print("(cNum - num) \((cNum - num))  (nearest - num) \((nearest - num))")
            if abs(cNum - num) < abs(nearest - num) {
                nearest = cNum
            } else if abs(cNum - num) == abs(nearest - num) {
                nearest = min(cNum, nearest)
            }
            print("nearest \(nearest)")
        }
    
        return String(nearest)
    }
}

print(FindClosestPalindrome().nearestPalindromic("123"))

