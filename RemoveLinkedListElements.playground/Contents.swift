public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        
        var fast = head
        var slow: ListNode? = dummy
        
        while fast != nil {
            if fast?.val == val {
                slow?.next = fast?.next
            } else {
                slow = slow?.next
            }
            fast = fast?.next
        }
        return dummy.next
    }
}

let a1 = ListNode(1)
let a2 = ListNode(2, a1)
let a3 = ListNode(3, a2)
let a4 = ListNode(4, a3)
let a5 = ListNode(5, a4)


var head = Solution().removeElements(a5, 5)

while head != nil {
    print(head?.val ?? "")
    head = head?.next
}
