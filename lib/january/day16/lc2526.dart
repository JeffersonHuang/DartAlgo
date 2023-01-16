import 'dart:collection';

class DataStream {
  late final int k;
  late final int val;
  int cur = 0;

  Queue queue = Queue<int>();

  DataStream(int value, int k) {
    this.k = k;
    this.val = value;
  }

  bool consec(int num) {
    queue.add(num);
    if (num == val) cur++;
    else cur = 0;
    return cur >= k;
  }
}

/**
 * Your DataStream object will be instantiated and called as such:
 * DataStream obj = DataStream(value, k);
 * bool param1 = obj.consec(num);
 */