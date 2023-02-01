import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/february/lc2325.dart';

void main(){
  test('lc2325', () {
    String key = 'the quick brown fox jumps over the lazy dog';
    String message = 'vkbs bs t suepuv';
    String matcher = 'this is a secret';
    expect(Solution().decodeMessage(key, message), matcher);

  });
}