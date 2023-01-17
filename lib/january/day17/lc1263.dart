import 'dart:collection';

class Solution {
  final step = List.filled(1 << 20, -1);
  final dir = [
    [0, 1],
    [1, 0],
    [0, -1],
    [-1, 0]
  ];
  int n = 0, m = 0;

  bool isValid(List<List<String>> grid, int x, int y) {
    if (x < 0 || x >= m || y < 0 || y >= n) {
      return false;
    }
    if (grid[x][y] == '#') {
      return false;
    }
    return true;
  }

  int pack(int sx, int sy, int bx, int by) {
    return (sx << 15) | (sy << 10) | (bx << 5) | by;
  }

  int minPushBox(List<List<String>> grid) {
    late int sx, sy, bx, by;
    int i, j;
    Queue<int> _queue = Queue();
    m = grid.length;
    n = grid.first.length;

    for (i = 0; i < m; i++) {
      for (j = 0; j < n; j++) {
        if (grid[i][j] == 'S') {
          sx = i;
          sy = j;
          grid[i][j] = '.';
        } else if (grid[i][j] == 'B') {
          bx = i;
          by = j;
          grid[i][j] = '.';
        }
      }
    }

    int s = pack(sx, sy, bx, by);
    step[s] = 0;
    _queue.add(s);
    int ans = -1;

    while (_queue.isNotEmpty) {
      s = _queue.first;
      _queue.removeFirst();

      by = s & 31;
      bx = s >> 5 & 31;
      sy = s >> 10 & 31;
      sx = s >> 15 & 31;

      if (grid[bx][by] == 'T') {
        if (ans == -1 || step[s] < ans) {
          ans = step[s];
        }
      }

      int sxn, syn, bxn, byn;

      for (var i = 0; i < 4; i++) {
        sxn = sx + dir[i][0];
        syn = sy + dir[i][1];

        if (!isValid(grid, sxn, syn)) {
          continue;
        }

        if (sxn == bx && syn == by) {
          /// 前面是一个箱子
          bxn = bx + dir[i][0];
          byn = by + dir[i][1];

          if (isValid(grid, bxn, byn)) {
            int ts = pack(sxn, syn, bxn, byn);
            if (step[s] + 1 < step[ts] || step[ts] == -1) {
              step[ts] = step[s] + 1;
              _queue.add(ts);
            }
          }
        } else {
          int ts = pack(sxn, syn, bx, by);

          if (step[s] < step[ts] || step[ts] == -1) {
            step[ts] = step[s];
            _queue.add(ts);
          }
        }
      }
    }
    return ans;
  }
}
