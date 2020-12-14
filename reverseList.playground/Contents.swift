public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var currentNode = head
        var prevNode: ListNode?
        var nextNode: ListNode?
        
        while currentNode != nil {
            nextNode = currentNode?.next
            currentNode?.next = prevNode
            prevNode = currentNode
            currentNode = nextNode
        }
        
        return prevNode
    }
}

let a1 = ListNode(5)
let a2 = ListNode(4, a1)
let a3 = ListNode(3, a2)
let a4 = ListNode(2, a3)
let a5 = ListNode(1, a4)

var head = Solution().reverseList(a5)

while head != nil {
    print(head?.val ?? "")
    head = head?.next
}
