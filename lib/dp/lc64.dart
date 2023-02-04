/// 64. 最小路径和
class Solution {
  int minPathSum(List<List<int>> grid) {
    final m = grid.length;
    final n = grid.first.length;

    for (var i = 0; i < m; i++) {
      for (var j = 0; j < n; j++) {
        if (i > 0 && j > 0) {
          grid[i][j] +=
              grid[i - 1][j] > grid[i][j - 1] ? grid[i][j - 1] : grid[i - 1][j];
        } else if (i > 0) {
          grid[i][j] += grid[i - 1][j];
        } else if (j > 0) {
          grid[i][j] += grid[i][j - 1];
        }
      }
    }
    return grid[m - 1][n - 1];
  }
}
// 1 2 3
// 4 5 6
