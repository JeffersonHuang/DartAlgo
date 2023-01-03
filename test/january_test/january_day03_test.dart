import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day03/lc1636.dart' as $lc1636;

void main() {
  test("lc1636 Solution frequencySort", () {
    expect($lc1636.Solution().frequencySort([1, 1, 2, 2, 2, 3]),
        [3, 1, 1, 2, 2, 2]);
    expect($lc1636.Solution().frequencySort([2, 3, 1, 3, 2]), [1, 3, 3, 2, 2]);
    expect($lc1636.Solution().frequencySort([-1, 1, -6, 4, 5, -6, 1, 4, 1]),
        [5, -1, 4, 4, -6, -6, 1, 1, 1]);
  });
}
