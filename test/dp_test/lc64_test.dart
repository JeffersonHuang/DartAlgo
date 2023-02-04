import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/dp/lc64.dart';
void main(){
  test('lc64 最小路径和 1 ', (){
    final grid = [[1,3,1],[1,5,1],[4,2,1]];
    expect(Solution().minPathSum(grid), 7);
  });
  test('lc64 最小路径和 2', (){
    final grid = [[1,2,3],[4,5,6]];
    expect(Solution().minPathSum(grid), 12);
  });

}