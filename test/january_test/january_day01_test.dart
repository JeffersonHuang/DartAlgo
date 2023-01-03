import 'package:test/test.dart';
import 'package:untitled/January/day01/lc2367.dart' as lc2367;

void main() {

  test('arithmeticTriplets 1', () {
    expect(lc2367.Solution().arithmeticTriplets( [0,1,4,6,7,10],3), 2);
  });
  test('arithmeticTriplets 2', () {
    expect(lc2367.Solution().arithmeticTriplets([4,5,6,7,8,9], 2), 2);
  });

  test('arithmeticTriplets 1', () {
    expect(lc2367.Solution1().arithmeticTriplets( [0,1,4,6,7,10],3), 2);
  });
  test('arithmeticTriplets 2', () {
    expect(lc2367.Solution1().arithmeticTriplets([4,5,6,7,8,9], 2), 2);
  });

}
