class Node {
  String url;
  Node? pre;
  Node? next;
  Node(this.url,{this.pre, this.next});
}
// 没又写测试用例，不太好写
class BrowserHistory {
  Node? cur;
  BrowserHistory(String homepage) {
    cur = Node(homepage);
  }

  void visit(String url) {
    Node newPage = Node(url, pre: cur, next: null);

    cur!.next = newPage;
    cur = cur!.next;

  }

  String back(int steps) {
    while (steps != 0) {
      if(cur!.pre == null) {
        break;
      }else {
        cur = cur!.pre;
        steps--;
      }
    }
    return cur!.url;
  }

  String forward(int steps) {
    while (steps != 0) {
      if (cur!.next == null) {
        break;
      }else {
        cur = cur!.next;
        steps--;
      }
    }
    return cur!.url;
  }
}

/**
 * Your BrowserHistory object will be instantiated and called as such:
 * BrowserHistory obj = BrowserHistory(homepage);
 * obj.visit(url);
 * String param2 = obj.back(steps);
 * String param3 = obj.forward(steps);
 */
