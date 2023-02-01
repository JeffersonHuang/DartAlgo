class Solution {
  String decodeMessage(String key, String message) {
    Map<String,int> map = {};
    int offset = 'a'.codeUnitAt(0);
    int index = 0;

    for (var i = 0; i < key.length; i++) {
     if (key[i] != ' ' && !map.containsKey(key[i])) {
       map[key[i]] = index;
       index++;
     }
    }

    String ans = '';
    for (var i = 0; i < message.length; i++) {
      if (message[i] != ' ') {
        ans += String.fromCharCode(map[message[i]]! + offset);
      }else {
        ans += ' ';
      }
    }
    return ans;
  }
}
