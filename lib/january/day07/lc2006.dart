/// 2006. 差的绝对值为 K 的数对数目
// 给你一个整数数组 nums 和一个整数 k ，请你返回数对 (i, j) 的数目，满足 i < j 且 |nums[i] - nums[j]| == k 。
//
// |x| 的值定义为：
//
// 如果 x >= 0 ，那么值为 x 。
// 如果 x < 0 ，那么值为 -x 。
//
//
// 示例 1：
//
// 输入：nums = [1,2,2,1], k = 1
// 输出：4
// 解释：差的绝对值为 1 的数对为：
// - [1,2,2,1]
// - [1,2,2,1]
// - [1,2,2,1]
// - [1,2,2,1]
// 示例 2：
//
// 输入：nums = [1,3], k = 3
// 输出：0
// 解释：没有任何数对差的绝对值为 3 。
// 示例 3：
//
// 输入：nums = [3,2,1,5,4], k = 2
// 输出：3
// 解释：差的绝对值为 2 的数对为：
// - [3,2,1,5,4]
// - [3,2,1,5,4]
// - [3,2,1,5,4]
//
//
// 提示：
//
// 1 <= nums.length <= 200
// 1 <= nums[i] <= 100
// 1 <= k <= 99
class Solution {
  int countKDifference(List<int> nums, int k) {
    int ans = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if ((nums[i] - nums[j]).abs() == k){
          ans++;
        }
      }
    }

    return ans;
  }
}

class Solution1 {
  int countKDifference(List<int> nums, int k) {
    int ans = 0;
    final map = <int, int>{};
    /// 取了绝对值，不需要考虑 i j的关系
    for (var value in nums) {
      if (map.containsKey(value - k)){
        ans += map[value - k]!;
      }

      if(map.containsKey(value + k)) {
        ans += map[value + k]!;
      }

      if (map.containsKey(value)) {
        map[value] = map[value]! + 1;
      }else {
        map[value] = 1;
      }
    }

    return ans;
  }
}

/// 于Soluiton1 解法一样，只是换了一种方式表达
class Solution2 {
  int countKDifference(List<int> nums, int k) {
    int ans = 0;
    final map = <int, int>{};

    for (var value in nums) {
      ans += map.containsKey(value - k) ? map[value - k]! : 0;
      ans += map.containsKey(value + k) ? map[value + k]! : 0;
      map[value] = map.containsKey(value) ? map[value]! + 1 : 1;
    }

    return ans;
  }
}