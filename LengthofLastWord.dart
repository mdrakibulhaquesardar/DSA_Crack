

/**
https://leetcode.com/problems/length-of-last-word/description/
58. Length of Last Word */



class Solution {
  int lengthOfLastWord(String s) {
  
   return  s.trim().split(" ").last.length;


  }
}

int main(){

Solution solution = new Solution();
String s ="   fly me   to   the moon  ";
 print(solution.lengthOfLastWord(s));

  return 0;
}