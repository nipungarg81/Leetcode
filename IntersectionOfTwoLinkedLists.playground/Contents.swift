public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
            return nil
        }
        
        var a: ListNode? = headA
        var b: ListNode? = headB
        
        while a !== b {
            a = a == nil ? headB : a?.next
            b = b == nil ? headA : b?.next
            
        }
        return a;
    }
}

let a = ListNode(4)
let b = ListNode(2)
b.next = a
let c = ListNode(1)
c.next = b
let d = ListNode(9)
d.next = c
let e = ListNode(4)
e.next = d

let f = ListNode(3)
f.next = b


//(array: [1,9,1,2,4])
//let head2 = ListNode.convertInListNode(array: [3,2,4])
//ListNode.printLL(head: head1)
//ListNode.printLL(head: head2)

let sol = Solution().getIntersectionNode(e, f)
print(sol?.val ?? "")
