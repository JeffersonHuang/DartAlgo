import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day09/lc162.dart' as $lc162;

void main() {
  test("lc2006 countKDifference 1", () {
    expect($lc162.Solution().findPeakElement([3,1,4,2]), 2);
  });

  test("lc2006 countKDifference 1", () {
    expect($lc162.Solution().findPeakElement([1,1,1,3,5,6,4]), 2 | 5);
  });

}

