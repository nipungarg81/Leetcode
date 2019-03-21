import Cocoa

class Add_Two_Numbers {
    class ListNode {
        var value: Int
        var next: ListNode?
        init() {
            value = 0
            next = nil
        }
        init(value:Int, next:ListNode?) {
            self.value = value
            self.next = next
        }
    }
    
    func addNumber(_ node1:ListNode?, _ node2:ListNode?) -> ListNode? {
        var temp1 = node1
        var temp2 = node2
        var sum:Int = 0
        let dummy:ListNode = ListNode()
        var cur = dummy
        while temp1 != nil && temp2 != nil {
            sum /= 10
            if let n = temp1 {
                sum += n.value
                temp1 = n.next
            }
            
            if let n = temp2 {
                sum += n.value
                temp2 = n.next
            }
            cur.next = ListNode(value: sum%10, next: nil)
            if let n = cur.next {
                cur = n
            }
        }
        return dummy.next
    }
}
