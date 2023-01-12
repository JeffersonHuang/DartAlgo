import 'dart:math';

/// 1590. 使数组和能被 P 整除
// 给你一个正整数数组 nums，请你移除 最短 子数组（可以为 空），使得剩余元素的 和 能被 p 整除。 不允许 将整个数组都移除。
//
// 请你返回你需要移除的最短子数组的长度，如果无法满足题目要求，返回 -1 。
//
// 子数组 定义为原数组中连续的一组元素。
//
//
//
// 示例 1：
//
// 输入：nums = [3,1,4,2], p = 6
// 输出：1
// 解释：nums 中元素和为 10，不能被 p 整除。我们可以移除子数组 [4] ，剩余元素的和为 6 。
// 示例 2：
//
// 输入：nums = [6,3,5,2], p = 9
// 输出：2
// 解释：我们无法移除任何一个元素使得和被 9 整除，最优方案是移除子数组 [5,2] ，剩余元素为 [6,3]，和为 9 。
// 示例 3：
//
// 输入：nums = [1,2,3], p = 3
// 输出：0
// 解释：和恰好为 6 ，已经能被 3 整除了。所以我们不需要移除任何元素。
// 示例  4：
//
// 输入：nums = [1,2,3], p = 7
// 输出：-1
// 解释：没有任何方案使得移除子数组后剩余元素的和被 7 整除。
// 示例 5：
//
// 输入：nums = [1000000000,1000000000,1000000000], p = 3
// 输出：0
//
//
// 提示：
//
// 1 <= nums.length <= 105
// 1 <= nums[i] <= 109
// 1 <= p <= 109
// 前缀和  + 哈希
// 我们可以做一个简单的推导，sum表示原数组总和，sub表示要移除的子数组元素之和，根据同余定理
// (sum−sub)%p=0⇒sum%p=sub%p
// 我们应该寻找一个子区间，其对p取余的结果与sum对p取余结果相同，我们令mod= sum % p
// 那么同理，sub % p=mod


class Solution {
  int minSubarray(List<int> nums, int p) {
    int sum = 0,ans = nums.length;

    for (var num in nums) {
      sum += num;
    }
    int mod = sum % p;
    if (mod == 0) return 0;

    final map = <int,int>{};
    map[0] = -1;

    sum = 0;

    for (var i = 0; i < nums.length; i++) {
      sum += nums[i];
      int curmod = sum % p;
      map[curmod] = i;

      int targetmode = curmod >= mod ? (curmod - mod) : (curmod - mod + p);
      if (map.containsKey(targetmode)){
        ans = min(ans, i - map[targetmode]!);
      }
    }

    return ans == nums.length ? -1 : ans;
  }
}