import Cocoa

class TreeNode <T: Comparable>{
    var value:T
    var parent : TreeNode?
    var leftNode : TreeNode?
    var rightNode : TreeNode?
    
    init(value:T) {
        self.value = value
    }
    convenience init(array: [T]) {
        precondition(array.count > 0)
        self.init(value:array.first!)
        for v in array.dropFirst(){
            insert(value: v)
        }
    }
    
    public var isRoot: Bool {
        return parent == nil
    }
    
    public var isLeaf: Bool {
        return leftNode == nil && rightNode == nil
    }
}

// MARK: - Adding items

extension TreeNode {
    func insert(value : T) {
        if value < self.value {
            if let leftNode = leftNode {
                leftNode.insert(value: value)
            } else {
                leftNode = TreeNode(value: value)
                leftNode?.parent = self
            }
        } else {
            if let rightNode = rightNode {
                rightNode.insert(value: value)
            } else {
                rightNode = TreeNode(value: value)
                rightNode?.parent = self
            }
        }
    }
}

// MARK: - Searching

extension TreeNode {
    func search(value: T) -> TreeNode? {
        var node: TreeNode? = self
        while let n = node {
            if value < n.value {
                node = n.leftNode
            } else if value > n.value {
                node = n.rightNode
            } else {
                return node
            }
        }
        return nil
    }
    
    func minimum() -> TreeNode {
        var node = self
        while let next = node.leftNode {
            node = next
        }
        return node
    }
    
    func maximun() -> TreeNode {
        var node = self
        while let next = node.rightNode {
            node = next
        }
        return node
    }
    
    /*
     Calculates the depth of this node, i.e. the distance to the root.
     Takes O(h) time.
     */
    func depth() -> Int {
        var node = self
        var edges = 0
        while let parent = node.parent {
            node = parent
            edges += 1
        }
        return edges
    }
    
    /*
     Calculates the height of this node, i.e. the distance to the lowest leaf.
     Since this looks at all children of this node, performance is O(n).
     */
    func height() -> Int {
        if isLeaf {
            return 0
        } else {
            return 1 + max(self.leftNode?.height() ?? 0, self.rightNode?.height() ?? 0)
        }
    }
}

// MARK: - Traversal

extension TreeNode {
    public func traverseInOrder(process: (T) -> Void) {
        leftNode?.traverseInOrder(process: process)
        process(value)
        rightNode?.traverseInOrder(process: process)
    }
    
    public func traversePreOrder(process: (T) -> Void) {
        process(value)
        leftNode?.traversePreOrder(process: process)
        rightNode?.traversePreOrder(process: process)
    }
    
    public func traversePostOrder(process: (T) -> Void) {
        leftNode?.traversePostOrder(process: process)
        rightNode?.traversePostOrder(process: process)
        process(value)
    }
    
    /*
     Performs an in-order traversal and collects the results in an array.
     */
    public func map(formula: (T) -> T) -> [T] {
        var a = [T]()
        if let left = leftNode { a += left.map(formula: formula) }
        a.append(formula(value))
        if let right = rightNode { a += right.map(formula: formula) }
        return a
    }
}

/*
 Is this binary tree a valid binary search tree?
 */
extension TreeNode {
    public func isBST(minValue: T, maxValue: T) -> Bool {
        if value < minValue || value > maxValue { return false }
        let leftBST = leftNode?.isBST(minValue: minValue, maxValue: value) ?? true
        let rightBST = rightNode?.isBST(minValue: value, maxValue: maxValue) ?? true
        return leftBST && rightBST
    }
}
