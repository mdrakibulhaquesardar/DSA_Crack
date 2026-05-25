import 'dart:ffi';

void main (){

List array = [13,46,24,52,20,9];



  for(int i = 0 ; i < array.length-1 ; i++){
         
         int min = i;

         for (int j = i+1 ; j < array.length ; j++){
             if(array[j] < array[min]){
                print( array[min]);
             }
             else{
                print("no");
             }
         }
  }



}