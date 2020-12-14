public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }    
}
 

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        if (head == nil || head?.next == nil) {
            return nil
        }
        
        var slowPointer = head
        var fastPointer = head
        
        // Once they match, stop iterating.
        while (slowPointer?.next != nil || fastPointer?.next != nil || fastPointer?.next?.next != nil) {
            slowPointer = slowPointer?.next
            fastPointer = fastPointer?.next?.next
            
            if (slowPointer === fastPointer) {
                break
            }
        }
        
        // Reset slow pointer back to headnode to start again.
        slowPointer = head

        // When slow pointer and fast pointer meets, that's the start of the cycle.
        while(slowPointer !== fastPointer) {
            slowPointer = slowPointer?.next
            fastPointer = fastPointer?.next
        }
        
        return slowPointer
    }
}
