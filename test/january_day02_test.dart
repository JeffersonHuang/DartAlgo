import 'package:test/test.dart';
import 'package:untitled/January/day02/lc2351.dart' as $lc2351;

void main() {
  test('repeatedCharacter 1', () {
    expect($lc2351.Solution().repeatedCharacter('abccbaacz'), 'c');
  });
  test('repeatedCharacter 2', () {
    expect($lc2351.Solution().repeatedCharacter('abcdd'), 'd');
  });

}
