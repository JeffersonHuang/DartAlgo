import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day06/lc1004.dart' as $lc1004;

void main() {
  test("lc1004 maxArea 1", () {
    expect($lc1004.Solution().longestOnes([1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0], 2),
        6);
  });
  test("lc1004 maxArea 2", () {
    expect(
        $lc1004.Solution().longestOnes(
            [0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], 3),
        10);
  });
}
