import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day08/lc1590.dart' as $lc1590;

void main() {
  test("lc2006 countKDifference 1", () {
    expect($lc1590.Solution().minSubarray([3,1,4,2], 6), 1);
  });
  test("lc2006 countKDifference 2", () {
    expect($lc1590.Solution().minSubarray([6,3,5,2], 9), 2);
  });
  test("lc2006 countKDifference 3", () {
    expect($lc1590.Solution().minSubarray([1,2,3], 3), 0);
  });
  test("lc2006 countKDifference 4", () {
    expect($lc1590.Solution().minSubarray([1,2,3], 7), -1);
  });

}

