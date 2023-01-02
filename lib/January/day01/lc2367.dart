/// [Solution] 使用hash [nums]是严格递增的，依次遍历即可。
class Solution {
  int arithmeticTriplets(List<int> nums, int diff) {
    var sets = <int>{};
    var ans  = 0;

    for (var element in nums) {
      if (sets.contains(element - diff * 2) && sets.contains(element - diff))ans++;
      sets.add(element);
    }

    return ans;
  }
}
/// [Solution1] 直接使用双指针，先固定一个数，在移动i, j 找后两个数
class Solution1 {
  int arithmeticTriplets(List<int> nums, int diff) {
    int ans = 0, j = 1, i = 0;
    for(var x in nums){
      while (nums[j] + diff < x) {
        j++;
      }
      if (nums[j] + diff != x) {
        continue;
      }
      /// nums[j] + diff == x
      while(nums[i] + diff < nums[j]){
        i += 1;
      }
      if (nums[i] + diff == nums[j]) {
        ans++;
      }

    }
    return ans;
  }
}