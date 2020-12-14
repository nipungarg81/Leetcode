public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        
        let dummy2: ListNode? = ListNode(0)
        
        var evenFast:ListNode? = head
        var evenSlow:ListNode? = dummy
        var oddList:ListNode? = dummy2
        
        while evenFast != nil {
            if evenFast!.val % 2 == 0 {
                evenSlow?.next = evenFast?.next
                oddList?.next = evenFast
                oddList = oddList?.next
            } else {
                evenSlow = evenSlow?.next
                
                
            }
            evenFast = evenFast?.next
        }
        evenSlow?.next = dummy2?.next
        return dummy.next
    }
    
    func printLL(_ head: ListNode?, _ name: String) {
        var head:ListNode? = head
        print("===========\(name)==============")
        while head != nil {
            print(head?.val ?? "")
            head = head?.next
        }
    }
}

let a1 = ListNode(1)
let a2 = ListNode(2, a1)
let a3 = ListNode(3, a2)
let a4 = ListNode(4, a3)
let a5 = ListNode(5, a4)


var head = Solution().oddEvenList(a5)

while head != nil {
    print(head?.val ?? "")
    head = head?.next
}
