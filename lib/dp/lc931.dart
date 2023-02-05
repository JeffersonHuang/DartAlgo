import 'dart:math';

class Solution {
  int minFallingPathSum(List<List<int>> matrix) {
    int n = matrix.length;
    final dp = List.generate(n, (_) => List.filled(n, 0));

    for (var i = 0; i < n; i++) {
      dp[0][i] = matrix[0][i];
    }

    for (var i = 1; i < n; i++) {
      for (var j = 0; j < n; j++) {
        int val = matrix[i][j];

        /// 默认从正上方，
        dp[i][j] = val + dp[i - 1][j];

        /// 如果能获取左上方，则对比并获取最小值
        if (j - 1 >= 0) {
          dp[i][j] = min(dp[i][j], dp[i - 1][j - 1] + val);
        }

        /// 如果能获取右上方，则对比并获取最小值
        if (j + 1 < n) {
          dp[i][j] = min(dp[i][j], dp[i - 1][j + 1] + val);
        }
      }
    }
    return dp[n - 1].reduce(min);
  }
}