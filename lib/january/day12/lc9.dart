/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    ListNode? dummy = ListNode(0, head);
    ListNode? fast = head;
    ListNode? slow = dummy;

    while (n-- > 0) {
      fast = fast?.next;
    }

    while (fast != null) {
      fast = fast.next;
      slow = slow?.next;
    }

    slow?.next = slow.next?.next;
    return dummy.next;
  }
}
