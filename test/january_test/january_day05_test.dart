import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day05/lc11.dart' as $lc11;

void main() {
  test("lc11 maxArea 1", () {
    expect($lc11.Solution().maxArea([1,8,6,2,5,4,8,3,7]), 49);
  });
  test("lc11 maxArea 2", () {
    expect($lc11.Solution().maxArea([1,1]), 1);
  });
}
