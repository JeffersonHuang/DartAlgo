import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day25/offer25.dart';

void main() {
  test("offer25 countPairs 1", () {
    expect(Solution().countPairs([3,1,2,2,2,1,3], 2),4);
  });
  test("offer25 countPairs 2", () {
    expect(Solution().countPairs([1,2,3,4], 1),0);
  });
}
