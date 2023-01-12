import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day07/lc2006.dart' as $lc2006;

void main() {
  // test("lc2006 countKDifference 1", () {
  //   expect($lc2006.Solution().countKDifference([1, 2, 2, 1], 1), 4);
  // });
  // test("lc2006 countKDifference 2", () {
  //   expect($lc2006.Solution().countKDifference([1, 3], 3), 0);
  // });
  // test("lc2006 countKDifference 3", () {
  //   expect($lc2006.Solution().countKDifference([3, 2, 1, 5, 4], 2), 3);
  // });
  //
  //
  // test("lc2006 Solution1 countKDifference 1", () {
  //   expect($lc2006.Solution1().countKDifference([1, 2, 2, 1], 1), 4);
  // });
  // test("lc2006 Solution1 countKDifference 2", () {
  //   expect($lc2006.Solution1().countKDifference([1, 3], 3), 0);
  // });
  // test("lc2006 Solution1 countKDifference 3", () {
  //   expect($lc2006.Solution1().countKDifference([3, 2, 1, 5, 4], 2), 3);
  // });


  test("lc2006 Solution1 countKDifference 4", () {
    expect(
        $lc2006.Solution1()
            .countKDifference([9, 3, 1, 1, 4, 5, 4, 9, 5, 10], 1),
        8);
  });
}

