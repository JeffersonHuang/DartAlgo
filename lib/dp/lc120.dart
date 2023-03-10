import 'dart:math';

/// 120. 三角形最小路径和
// 给定一个三角形 triangle ，找出自顶向下的最小路径和。
//
// 每一步只能移动到下一行中相邻的结点上。相邻的结点 在这里指的是 下标 与 上一层结点下标 相同或者等于 上一层结点下标 + 1 的两个结点。也就是说，如果正位于当前行的下标 i ，那么下一步可以移动到下一行的下标 i 或 i + 1 。
//
//
//
// 示例 1：
//
// 输入：triangle = [[2],[3,4],[6,5,7],[4,1,8,3]]
// 输出：11
// 解释：如下面简图所示：
//    2
//   3 4
//  6 5 7
// 4 1 8 3
// 自顶向下的最小路径和为 11（即，2 + 3 + 5 + 1 = 11）。
// 示例 2：
//
// 输入：triangle = [[-10]]
// 输出：-10
//
//
// 提示：
//
// 1 <= triangle.length <= 200
// triangle[0].length == 1
// triangle[i].length == triangle[i - 1].length + 1
// -104 <= triangle[i][j] <= 104
//

class Solution {
  int minimumTotal(List<List<int>> triangle) {
    int m = triangle.length;
    final dp = List.generate(m, (_) => List.filled(m,0));
    dp[0][0] = triangle[0][0];
   //( i - 1 ) % 2 =? 1 - (i % 2 )
    //(i - 1 ) % 2 = (i % 2 - 1 % 2 ) % 2
    // (i % 2 - 1) % 2
    // 1 - (i % 2) =
    // i =
    for (var i = 1; i < m; i++) {
      dp[i][0] = dp[i - 1][0] + triangle[i][0];
      for (var j = 1; j < i; j++) {
        dp[i][j] = min(dp[i - 1][j - 1], dp[i - 1][j]) + triangle[i][j];
      }
      dp[i][i] = dp[i - 1][i - 1] + triangle[i][i];
    }
    print('Solution.minimumTotal $dp');
    return dp[m -1].reduce(min);
  }
}

// 空间优化
//Solution.minimumTotal [[2, 0, 0, 0], [5, 6, 0, 0], [11, 10, 13, 0], [15, 11, 18, 16]]
//Solution1.minimumTotal [[13, 10, 0, 0], [17, 16, 8, 0]]
class Solution1 {
  int minimumTotal(List<List<int>> triangle) {
    int m = triangle.length;
    final dp = List.generate(2, (_) => List.filled(m,0));
    dp[0][0] = triangle[0][0];

    for (var i = 1; i < m; i++) {
      int cur = i % 2;
      int pre = (i - 1) % 2;
      dp[cur][0] = dp[pre][0] + triangle[i][0];
      for (var j = 1; j < i; j++) {
        dp[cur][j] = min(dp[pre][j - 1], dp[pre][j]) + triangle[i][j];
      }
      dp[cur][i] = dp[pre][i - 1] + triangle[i][i];
      print('Solution1.minimumTotal $dp');
     }
    print('Solution1.minimumTotal $dp');
    return dp[(m - 1) & 1].reduce(min);
  }
}