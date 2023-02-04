class Solution {
  int uniquePathsWithObstacles(List<List<int>> obstacleGrid) {
    int m = obstacleGrid.length;
    int n = obstacleGrid.first.length;

    final f = List.generate(m, (_) => List.filled(n,0));

    /// 障碍可能在起点
    f[0][0] = obstacleGrid[0][0] == 0 ? 1 : 0;

    for (var i = 0; i < m; i++) {
      for (var j = 0; j < n; j++) {
        if (obstacleGrid[i][j] == 1) {
          continue;
        }
        if (i > 0 && j > 0) {
          f[i][j] = f[i - 1][j] + f[i][j - 1];
        }else if (i > 0) {
          f[i][j] = f[i - 1][j];
        }else if (j > 0) {
          f[i][j] = f[i][j - 1];
        }
      }
    }
    return f[m - 1][n - 1];
  }
}