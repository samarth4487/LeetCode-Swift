/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        let xLevel = level(root: root, val: x, depth: 0)
        let yLevel = level(root: root, val: y, depth: 0)
        
        if xLevel == yLevel && !isSibling(root: root, a: x, b: y) {
            return true
        } else {
            return false
        }
    }
    
    func isSibling(root: TreeNode?, a: Int, b: Int) -> Bool {
        if root == nil {
            return false
        }
        
        if root!.left?.val == a && root!.right?.val == b {
            return true
        } else if root!.left?.val == b && root!.right?.val == a {
            return true
        }
        
        return isSibling(root: root!.left, a: a, b: b) || isSibling(root: root!.right, a: a, b: b)
    }
    
    func level(root: TreeNode?, val: Int, depth: Int) -> Int {
        if root == nil {
            return 0
        }
        if root!.val == val {
            return depth
        }
        let l = level(root: root!.left, val: val, depth: depth + 1)
        if l != 0 {
            return l
        }
        return level(root: root!.right, val: val, depth: depth + 1)
    }
}