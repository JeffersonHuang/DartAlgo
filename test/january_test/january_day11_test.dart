import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day11/offer107.dart' as $offer107;

void main() {
  test("offer107 updateMatrix 1", () {
    expect($offer107.Solution().updateMatrix([[0,0,0],[0,1,0],[0,0,0]]), [[0,0,0],[0,1,0],[0,0,0]]);
  });

  test("offer107 updateMatrix 2", () {
    expect($offer107.Solution().updateMatrix([[0,0,0],[0,1,0],[1,1,1]]), [[0,0,0],[0,1,0],[1,2,1]]);
  });
}
