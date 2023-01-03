import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day03/lc1636.dart' as $lc1636;

void main() {
  test("lc1636 Solution frequencySort", () {
    expect($lc1636.Solution().frequencySort([1, 1, 2, 2, 2, 3, 4]),
        [4, 3, 1, 1, 2, 2, 2]);
  });
}
