//https://leetcode.com/problems/find-closest-number-to-zero/description/

// 2239. Find Closest Number to Zero
// Easy



class Solution {
  int findClosestNumber(List<int> num) {
    int closest = num[0];
    for (int i = 1; i < num.length; i++) {
      if (num[i].abs() < closest.abs()) {
        closest = num[i];
      } else if (num[i].abs() == closest.abs() && num[i] > closest) {
        closest = num[i];
      }
    }
    return closest;
  }
}

int main(){

Solution solution = new Solution();
List<int> num =[2,-1,1];
 print(solution.findClosestNumber(num));
 //expected output is 1

  return 0;
}