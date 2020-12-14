public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard let  head = head else {
            return nil
        }
        
        let newHead = ListNode(0)
        var slow:ListNode? = newHead
        var fast:ListNode? = newHead
       
        newHead.next = head
        for _ in 0...n {
            fast = fast?.next
        }
       
        while fast != nil {
            slow = slow?.next
            fast = fast?.next
        }
        slow?.next = slow?.next?.next
        return newHead.next
        
    }
}

let a1 = ListNode(5)
let a2 = ListNode(4, a1)
let a3 = ListNode(3, a2)
let a4 = ListNode(2, a3)
let a5 = ListNode(1, a4)

var head = Solution().removeNthFromEnd(a5, 2)

while head != nil {
    print(head?.val ?? "")
    head = head?.next
}

