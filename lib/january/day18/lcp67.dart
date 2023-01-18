import 'dart:collection';

import 'package:untitled/january/day15/lc67.dart';

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  TreeNode? expandBinaryTree(TreeNode? root) {
    if (root == null) return root;
    Queue queue = Queue();
    queue.add(root);

    while (queue.isNotEmpty) {
      TreeNode node = queue.first;
      queue.removeFirst();

      if (node.left != null) {
        queue.add(node.left);
        TreeNode tmp = TreeNode(-1,);
        tmp.left = node.left;
        node.left = tmp;
      }

      if (node.right != null) {
        queue.add(node.right);
        TreeNode tmp = TreeNode(-1,);
        tmp.right = node.right;
        node.right = tmp;
      }
    }
    return root;
  }
}