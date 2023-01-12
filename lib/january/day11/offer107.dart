import 'dart:math';

class Solution {
  List<List<int>> updateMatrix(List<List<int>> mat) {
    int m = mat.length, n = mat.first.length;

    /// All elements of the created list share the same [fill] value.
    /// ```dart
    /// final shared = List.filled(3, []);
    /// shared[0].add(499);
    /// print(shared);  // [[499], [499], [499]]
    /// ```
    /// 注意filled 的使用
    List<List<int>> matrix = List.generate(
      m,
        (_)=>List.filled(n, double.maxFinite.toInt() ~/ 2),
    );

    for (var i = 0; i < m; ++i) {
      for (var j = 0; j < n; ++j) {
        if (mat[i][j] == 0) {
          matrix[i][j] = 0;
        }
      }
    }

    //只有 水平向左移动 和 竖直向上移动；
    for (var i = 0; i < m; ++i) {
      for (var j = 0; j < n; ++j) {
        if (i - 1 >= 0) {
          matrix[i][j] = min(matrix[i][j], matrix[i - 1][j] + 1);
        }
        if (j - 1 >= 0) {
          matrix[i][j] = min(matrix[i][j], matrix[i][j - 1] + 1);
        }
      }
    }
    // 只有 水平向左移动 和 竖直向下移动；
    for (var i = m - 1; i >= 0; i--) {
      for (var j = 0; j < n; j++) {
        if (i + 1 < m) {
          matrix[i][j] = min(matrix[i][j], matrix[i + 1][j] + 1);
        }
        if (j - 1 >= 0) {
          matrix[i][j] = min(matrix[i][j], matrix[i][j - 1] + 1);
        }
      }
    }
    // 只有 水平向右移动 和 竖直向上移动；
    for (var i = 0; i < m; i++) {
      for (var j = n - 1; j >= 0; j--) {
        if (i - 1 >= 0) {
          matrix[i][j] = min(matrix[i][j], matrix[i - 1][j] + 1);
        }
        if (j + 1 < n) {
          matrix[i][j] = min(matrix[i][j], matrix[i][j + 1] + 1);
        }
      }
    }
    // 只有 水平向右移动 和 竖直向下移动。
    for (var i = m - 1; i >= 0; i--) {
      for (var j = n - 1; j >= 0; j--) {
        if (i + 1 < m) {
          matrix[i][j] = min(matrix[i][j], matrix[i + 1][j] + 1);
        }
        if (j + 1 < n) {
          matrix[i][j] = min(matrix[i][j], matrix[i][j + 1] + 1);
        }
      }
    }
    return matrix;
  }
}

void main(){
  List<List<int>> list = List.generate(10, (_) => List.filled(10,0));
  list[0][0] = 1;
  // for (var num in list) {
    print(list);
  // }
}
