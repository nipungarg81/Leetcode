public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        return swapTwo(head)
    }
    
    func swapTwo(_ head: ListNode?) -> ListNode? {
        if head?.next == nil { return head }
        
        let next = head?.next
        head?.next = swapTwo(next?.next)
        next?.next = head
        return next
    }
}


enum DonationProgressState {
    case notStarted
    case inProgress(charityOverview: Bool)
}

var donationProgressState: DonationProgressState = .notStarted {
        didSet {
            switch donationProgressState {
            case .inProgress(let charityOverview):
                let nn = charityOverview
            default:
                break
            }
        }
    }

let v1 = ListNode(1)
let v2 = ListNode(2)
let v3 = ListNode(3)
let v4 = ListNode(4)
v1.next = v2
v2.next = v3
v3.next = v4
let s = Solution().swapPairs(v1)
print(s?.val)
print(s?.next?.val)
print(s?.next?.next?.val)
print(s?.next?.next?.next?.val)
