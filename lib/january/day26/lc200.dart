// 200. 岛屿数量
// 给你一个由 '1'（陆地）和 '0'（水）组成的的二维网格，请你计算网格中岛屿的数量。
//
// 岛屿总是被水包围，并且每座岛屿只能由水平方向和/或竖直方向上相邻的陆地连接形成。
//
// 此外，你可以假设该网格的四条边均被水包围。
//
//
//
// 示例 1：
//
// 输入：grid = [
//   ["1","1","1","1","0"],
//   ["1","1","0","1","0"],
//   ["1","1","0","0","0"],
//   ["0","0","0","0","0"]
// ]
// 输出：1
// 示例 2：
//
// 输入：grid = [
//   ["1","1","0","0","0"],
//   ["1","1","0","0","0"],
//   ["0","0","1","0","0"],
//   ["0","0","0","1","1"]
// ]
// 输出：3
//
//
// 提示：
//
// m == grid.length
// n == grid[i].length
// 1 <= m, n <= 300
// grid[i][j] 的值为 '0' 或 '1'
/// Union
class Solution {
  int numIslands(List<List<String>> grid) {
    if (grid.isEmpty) return 0;

    int nr = grid.length;
    int nc = grid.first.length;

    UnionFind uf = UnionFind(grid);
    for (var r = 0; r < nr; r++) {
      for (var c = 0; c < nc; c++) {
        if (grid[r][c] == '1') {
          grid[r][c] = '0';
          // 上
          if (r - 1 >= 0 && grid[r - 1][c] == '1') {
            uf.union(r * nc + c, (r - 1) * nc + c);
          }
          // 下
          if (r + 1 < nr && grid[r + 1][c] == '1') {
            uf.union(r * nc + c, (r + 1) * nc + c);
          }
          // 左
          if (c - 1 >= 0 && grid[r][c - 1] == '1') {
            uf.union(r * nc + c, r * nc + c - 1);
          }
          // 右
          if (c + 1 < nc && grid[r][c + 1] == '1') {
            uf.union(r * nc + c, r * nc + c + 1);
          }
        }
      }
    }
    return uf.getCount();
  }
}

class UnionFind {
  late int count;
  late List<int> parent;
  late List<int> rank;

  UnionFind(List<List<String>> grid) {
    count = 0;
    int m = grid.length;
    int n = grid.first.length;

    parent = List.filled(m * n, 0);
    rank = List.filled(m * n, 0);

    for (var i = 0; i < m; i++) {
      for (var j = 0; j < n; j++) {
        if (grid[i][j] == '1') {
          parent[i * n + j] = i * n + j;
          count++;
        }
        rank[i * n + j] = 0;
      }
    }
  }

  int find(int i) {
    if (parent[i] != i) parent[i] = find(parent[i]);
    return parent[i];
  }

  void union(int x, int y) {
    int rootX = find(x);
    int rootY = find(y);
    if (rootX != rootY) {
      if (rank[rootX] > rank[rootY]) {
        parent[rootY] = rootX;
      } else if (rank[rootX] < rank[rootY]) {
        parent[rootX] = rootY;
      } else {
        parent[rootY] = rootX;
        rank[rootX] += 1;
      }
      count--;
    }
  }

  int getCount() {
    return count;
  }
}

// dfs
class Solution1 {
  int numIslands(List<List<String>> grid) {
    int res = 0;

    int m = grid.length, n = grid[0].length;
    for (int i = 0;  i < m; i++) {
      for (int j = 0; j < n; j++) {
        if(grid[i][j] == '1'){
          dfs(grid, i,j);
          res++;
        }
      }
    }

    return res;
  }

  void dfs(List<List<String>> grid, int r, int c){
    if (!inArea(grid, r, c)) {
      return;
    }
    if (grid[r][c] == '0') {
      return;
    }

    grid[r][c] = '0';// 标记

    dfs(grid, r - 1, c);
    dfs(grid, r + 1, c);
    dfs(grid, r, c - 1);
    dfs(grid, r, c + 1);
  }

  bool inArea(List<List<String>> grid, int r, int c){
    return 0 <= r && r < grid.length && 0 <= c && c < grid[0].length;
  }
}