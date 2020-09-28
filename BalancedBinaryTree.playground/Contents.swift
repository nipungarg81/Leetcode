public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


class BalancedBinaryTree {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return checkHeight(root) != -1
    }
    
    private func checkHeight(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        let left = checkHeight(root.left), right = checkHeight(root.right)
        
        if left == -1 || right == -1 {
            return -1
        }
        
        if abs(left - right) > 1 {
            return -1
        }
        
        return max(left, right) + 1
    }
}

let t1 = TreeNode(15)
let t2 = TreeNode(7)
let t3 = TreeNode(20)
let t4 = TreeNode(9)
let t5 = TreeNode(3)

t5.left = t4
t5.right = t3

t3.left = t1
t3.right = t2

print(BalancedBinaryTree().isBalanced(t5))


