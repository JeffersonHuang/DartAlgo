// 剑指 Offer II 062. 实现前缀树
// Trie（发音类似 "try"）或者说 前缀树 是一种树形数据结构，
// 用于高效地存储和检索字符串数据集中的键。这一数据结构有相当多的应用情景，例如自动补完和拼写检查。
//
// 请你实现 Trie 类：
//
// Trie() 初始化前缀树对象。
// void insert(String word) 向前缀树中插入字符串 word 。
// boolean search(String word) 如果字符串 word 在前缀树中，返回 true（即，在检索之前已经插入）；否则，返回 false 。
// boolean startsWith(String prefix) 如果之前已经插入的字符串 word 的前缀之一为 prefix ，返回 true ；否则，返回 false 。

class Trie {
  late List<Trie?> children;
  late bool isEnd;

  Trie() {
    children = List.generate(26, (_) => null);
    isEnd = false;
  }

  void insert(String word) {
    Trie node = this;
    for (var i = 0; i < word.length; i++) {
      int index = word.codeUnitAt(i) - 'a'.codeUnitAt(0);
      if (node.children[index] == null) {
        node.children[index] = Trie();
      }
      node = node.children[index]!;
    }
    node.isEnd = true;
  }

  bool search(String word) {
    final node = _searchPrefix(word);
    return node != null && node.isEnd;
  }

  bool startsWith(String prefix) {
    return _searchPrefix(prefix) != null;
  }

  Trie? _searchPrefix(String prefix) {
    Trie node = this;
    for (int i = 0; i < prefix.length; i++) {
      int index = prefix.codeUnitAt(i);
      if (node.children[index] == null) {
        return null;
      }
      node = node.children[index]!;
    }
    return node;
  }
}

/**
 * Your Trie object will be instantiated and called as such:
 * Trie obj = Trie();
 * obj.insert(word);
 * bool param2 = obj.search(word);
 * bool param3 = obj.startsWith(prefix);
 */
