// 1700. 无法吃午餐的学生数量
class Solution {
  int countStudents(List<int> students, List<int> sandwiches) {
    for (var i = 0; i < sandwiches.length; i++) {
        final idx = students.indexOf(sandwiches[i]);
        if (idx != -1) {
          return students.length - i;
        }else {
          students[idx] = -1;
        }
    }


    return students.where((element) => element != -1).length;
  }
}