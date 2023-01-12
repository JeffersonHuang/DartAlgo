import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day10/lc1318.dart' as $lc1318;

void main() {
  test("lc1318 minFlips 1", () {
    expect($lc1318.Solution().minFlips(2, 6, 5), 3);
  });

  test("lc1318 minFlips 2", () {
    expect($lc1318.Solution().minFlips(4, 2, 7), 1);
  });
  test("lc1318 minFlips 2", () {
    expect($lc1318.Solution().minFlips(1, 2, 3), 0);
  });
}
