
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/january/day12/lc9.dart' as $lc9;

void main() {
  test("offer107 updateMatrix 1", () {
    $lc9.ListNode head = $lc9.ListNode(1, null);
    $lc9.ListNode? cur = head;
    for (var i = 2; i < 6; i++) {
      var node = $lc9.ListNode(i,null);
      cur!.next = node;
      cur = cur.next;
    }

    var res = $lc9.Solution().removeNthFromEnd(head,2);
    List<int> list = [];

    while (res != null) {
      list.add(res.val);
      res = res.next;
    }
    expect(list, [1,2,3,5]);
  });
}
