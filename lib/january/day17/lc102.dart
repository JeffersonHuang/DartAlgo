//102. 二叉树的层序遍历
// 给你二叉树的根节点 root ，返回其节点值的 层序遍历 。 （即逐层地，从左到右访问所有节点）。
//
//
//
// 示例 1：
//
//
// 输入：root = [3,9,20,null,null,15,7]
// 输出：[[3],[9,20],[15,7]]
// 示例 2：
//
// 输入：root = [1]
// 输出：[[1]]
// 示例 3：
//
// 输入：root = []
// 输出：[]
//
//
// 提示：
//
// 树中节点数目在范围 [0, 2000] 内
// -1000 <= Node.val <= 1000

import 'dart:collection';

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
  final Queue<TreeNode> _queue = Queue();
  final List<List<int>> list = [];

  List<List<int>> levelOrder(TreeNode? root) {
    if (root == null) return list;
    _queue.add(root);

    while(_queue.isNotEmpty) {
      final sz = _queue.length;
      final List<int> leveList = [];

      for (var i = 0; i < sz; i++) {
        final item = _queue.first;
        _queue.removeFirst();

        if (item.left != null) {
          _queue.add(item.left!);
        }

        if (item.right != null) {
          _queue.add(item.right!);
        }

        leveList.add(item.val);
      }

      list.add(leveList);
    }
    return list;
  }
}
