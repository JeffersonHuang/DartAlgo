import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day04/lc2405.dart' as $lc2405;

//ab ac ab a
void main() {
  test("lc2405 partitionString 1", () {
    expect($lc2405.Solution().partitionString('abacaba'), 4);
  });
  test("lc2405 partitionString 2", () {
    expect($lc2405.Solution().partitionString('ssssss'), 6);
  });
}
