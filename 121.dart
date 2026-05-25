class Solution {
  int maxProfit(List<int> prices) {
  


  int minPrice = prices[0];
  int maxProfit = 0;
   
   for (var price in prices) {
      
      if(price < minPrice ){
          minPrice = price;

      }
      else{
        int profit = price-minPrice;
        if (profit > maxProfit) {
      maxProfit = profit;
    }
      }
      
   }





    return maxProfit ;
  }


}


void main(){
 var prices = [7,1,5,3,6,4];
  Solution solution = Solution();
  print(solution.maxProfit(prices));
}