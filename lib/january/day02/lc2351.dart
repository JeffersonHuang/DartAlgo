class Solution {
  String repeatedCharacter(String s) {
    List a =  List.filled(26, 0);

    for (var i = 0; i < s.length; i++) {
      var idx = s[i].codeUnitAt(0) - 'a'.codeUnitAt(0);
      a[idx]++;
      if (a[idx] == 2) return s[i];
    }

    return '';
  }
}