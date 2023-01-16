import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day16/lc2526.dart' as $lc2526;

void main() {
  test("lc2526 DataStream 1", () {
    final datsStream = $lc2526.DataStream(4,3);
    expect(datsStream,datsStream);
    expect(datsStream.consec(4),false);
    expect(datsStream.consec(4),false);
    expect(datsStream.consec(4),true);
    expect(datsStream.consec(3),false);
  });
}
