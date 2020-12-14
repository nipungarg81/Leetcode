

class MyLinkedList {
    class Node {
        let value: Int
        var next: Node?
        
        init(value: Int, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }
    
    var head: Node?
    /** Initialize your data structure here. */
    init() {
        head = nil
    }
    
    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        guard let node = node(at: index) else {
            return -1
        }
        return node.value
    }
    
    private func node(at: Int) -> Node? {
        guard at > -1, var node = head else {
            return nil
        }
        guard at > 0 else {
            return head
        }
        for _ in 1...at {
            guard let nextNode = node.next else {
                return nil
            }
            node = nextNode
        }
        return node
    }
    
    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        let newNode = Node(value: val, next: head)
        head = newNode
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        guard head != nil else {
            head = Node(value: val)
            return
        }
        var node = head
        while node?.next != nil {
            node = node?.next
        }
        node?.next = Node(value: val)
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        if index <= 0 {
            addAtHead(val)
            return
        }
        guard let prevNode = node(at: index - 1) else {
            return
        }
        let newNode = Node(value: val, next: prevNode.next)
        prevNode.next = newNode
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        if index == 0, head != nil {
            head = head?.next
            return
        }
        guard let prevNode = node(at: index - 1) else {
            return
        }
        prevNode.next = prevNode.next?.next
    }
    
    func printList() {
        var pointer = head
        while pointer != nil {
            print(pointer?.value ?? "")
            pointer = pointer?.next
        }
        print("=============================")
    }
}

let myLinkedList = MyLinkedList();
myLinkedList.addAtHead(1);
myLinkedList.addAtTail(3);
myLinkedList.printList()
myLinkedList.addAtIndex(1, 2);    // linked list becomes 1->2->3
myLinkedList.printList()
myLinkedList.get(1);              // return 2
myLinkedList.deleteAtIndex(1);    // now the linked list is 1->3
myLinkedList.printList()
myLinkedList.get(1);              // return 3
