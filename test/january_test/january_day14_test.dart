import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day14/lc1700.dart' as $lc1700;

void main() {
  test("lc1700 countStudents 1", () {
    expect($lc1700.Solution().countStudents([1,1,0,0], [0,1,0,1]), 0);
  });
}
