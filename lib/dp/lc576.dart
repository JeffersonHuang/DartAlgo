class Solution {
  final int mod = (1e9 + 7).toInt();
  late int m, n, N;
  int findPaths(int m, int n, int maxMove, int startRow, int startColumn) {
    this.m = m;
    this.n = n;
    N = maxMove;

    final f = List.generate(m * n, (_) => List.filled(N + 1, 0));

    for (var i = 0; i < m; i++) {
      for (var j = 0; j < n; j++) {
        if (i == 0) add(i, j, f); //第一列
        if (i == m - 1) add(i, j, f); // 最后一列
        if (j == 0) add(i, j, f); // 第一行
        if (j == n - 1) add(i, j, f); // 最后一行
      }
    }

    final dirs = [
      [1, 0],
      [-1, 0],
      [0, 1],
      [0, -1]
    ];

    for (var step = 1; step <= N; step++) {

      for (var k = 0; k < m * n; k++) {
        int x = parseIndex(k)[0], y = parseIndex(k)[1];
        for (var item in dirs) {
          int nx = x + item[0], ny = y + item[1];

          if (nx >= 0 && nx < m && ny >= 0 && ny < n) {
            f[k][step] += f[getIndex(nx, ny)][step - 1];
            f[k][step] %= mod;
          }
        }
      }
    }

    return f[getIndex(startRow, startColumn)][N];
  }

  void add(int x, int y, List<List<int>> f) {
    int idx = getIndex(x, y);
    for (var step = 1; step <= N; step++) {
      f[idx][step]++;
    }
  }

  int getIndex(int x, int y) {
    return x * n + y;
  }

  List<int> parseIndex(int idx) {
    return [idx ~/ n, idx % n];
  }
}
