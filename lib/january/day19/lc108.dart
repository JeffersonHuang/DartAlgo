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
  TreeNode? sortedArrayToBST(List<int> nums) {
    return helper(nums, 0, nums.length - 1);
  }

  TreeNode? helper(List<int> nums,int l, int r){
    if (l > r) return null;

    int mid = (l + r) ~/ 2;
    TreeNode root = TreeNode(nums[mid]);
    root.left = helper(nums, l, mid - 1);
    root.right = helper(nums, mid + 1, r);
    return root;
  }
}
