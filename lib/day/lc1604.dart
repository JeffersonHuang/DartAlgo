class Solution {
  List<String> alertNames(List<String> keyName, List<String> keyTime) {
    final timeMap = <String, List<int>>{};
    final res = <String>[];

    for (var i = 0; i < keyName.length; i++) {
      String name = keyName[i];
      String time = keyTime[i];
      //11:00
      int hour = getHour(time);
      int minute = getMinute(time);
      if (timeMap.containsKey(name)){
        timeMap[name]!.add(hour * 60 + minute);
      }else {
        var time = hour * 60 + minute;
        timeMap[name] = [time];
      }
    }

    for (var element in timeMap.entries) {
      element.value.sort();
      int sz = element.value.length;
      for (int i = 2; i < sz; i++) {
        int time1 = element.value[i - 2], time2 = element.value[i];
        int diff = time2 - time1;

        if (diff <= 60) {
          res.add(element.key);
          break;
        }
      }
    }

    res.sort();
    return res;
  }

  int getHour(String time){
    int offset =  '0'.codeUnitAt(0);
    return (time.codeUnitAt(0) - offset) * 10 + time.codeUnitAt(1) - offset;
  }

  int getMinute(String time) {
    int offset =  '0'.codeUnitAt(0);
    return (time.codeUnitAt(3) - offset) * 10 + time.codeUnitAt(4) - offset;
  }
}