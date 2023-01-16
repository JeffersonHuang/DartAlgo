/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? expandBinaryTree(TreeNode? root) {
    if (root == null) return root;
    if (root.left != null) {
      root.left = TreeNode(-1, expandBinaryTree(root.left), null);
    }
    if (root.right != null) {
      root.right = TreeNode(-1, null, expandBinaryTree(root.right));
    }
    return root;
  }
}
