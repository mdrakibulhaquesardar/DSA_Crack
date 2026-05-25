class Solution {
  bool isSubsequence(String s, String t) {
    var S = s.length;
    var T = t.length;
    if(s==" "){
      return true ;
    }
    if(S>T){
      return false;
    }
    var j =0 ;

      for(int i=0 ; i<t.length ; i++){
         if(t[i] == s[j]){
          if (j == S-1){
            return true;
          }
          j+=1;
         }
      
      }

    return false;  
  }
} 


void main(){
  String s = "axc";
  String t = "ahbgdc";
  Solution solution = Solution();
  print(solution.isSubsequence(s, t));
}