import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/dp/lc120.dart';
void main(){
  test('lc64 1 最小路径和 1 ', (){
    final grid =[[2],[3,4],[6,5,7],[4,1,8,3]];
    expect(Solution1().minimumTotal(grid), 11);
  });
  test('lc64 1 最小路径和 2', (){
    final grid = [[-10]];
    expect(Solution1().minimumTotal(grid), -10);
  });
  test('lc64 1 最小路径和 2', (){
    final grid =[[-1],[2,3],[1,-1,-3]];
    expect(Solution1().minimumTotal(grid), -1);
  });

  test('lc64 最小路径和 1 ', (){
    final grid =[[2],[3,4],[6,5,7],[4,1,8,3]];
    expect(Solution().minimumTotal(grid), 11);
  });
  test('lc64 最小路径和 2', (){
    final grid = [[-10]];
    expect(Solution().minimumTotal(grid), -10);
  });
  test('lc64 最小路径和 2', (){
    final grid =[[-1],[2,3],[1,-1,-3]];
    expect(Solution().minimumTotal(grid), -1);
  });
}
