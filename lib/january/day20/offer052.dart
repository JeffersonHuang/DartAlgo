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
  late TreeNode dummyHead;
  late TreeNode cur;
  TreeNode? increasingBST(TreeNode? root) {
    dummyHead = TreeNode(-1, null, null);
    cur = dummyHead;
    _inorderTraversal(root);
    return dummyHead.right;
  }

  void _inorderTraversal(TreeNode? root) {
    if (root == null) return;
    _inorderTraversal(root.left);
    TreeNode node = TreeNode(root.val, null, null);
    cur.right = node;
    cur = cur.right!;
    _inorderTraversal(root.right);
  }
}
