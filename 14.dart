class Solution {
  String longestCommonPrefix(List<String> strs) {
    
    String prefix=strs[0];
    int i =1 ;
    print(prefix);

    for (var str in strs) {
      
      print(prefix[0]);

      if(prefix[i] == str[i]){
        
      }



      
    }



    return "";
  }
}

void main(){
 var strs = ["flower","flow","flight"];
  Solution solution = Solution();
  print(solution.longestCommonPrefix(strs));
}


