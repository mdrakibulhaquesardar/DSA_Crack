/*
https://leetcode.com/problems/remove-element/description/

 */

void main() {
  Solution solution = Solution();

  // Define the test case
  List<int> nums = [3, 2, 2, 3, 4, 5, 3];  
int val = 3;  
List<int> expectedNums = [3, 2, 2, 3, 4, 5, 3];


  // Call removeElement to remove occurrences of `val` from nums
  int k = solution.removeElement(nums, val);
  print(k);

  // Assertions
  assert(k == expectedNums.length,
      'Test failed: k should be ${expectedNums.length}');

  // Sort the first k elements of nums to compare with expectedNums
  nums.sublist(0, k).sort();

  // Compare the first k elements with expectedNums
  for (int i = 0; i < k; i++) {
    assert(nums[i] == expectedNums[i],
        'Test failed: nums[$i] should be ${expectedNums[i]}');
  }

  // If all assertions pass, print the success message
  print('Test passed!');
}

class Solution {
  int removeElement(List<int> nums, int val) {
    int k = 0; // This will count the number of elements that are not equal to `val`
    
    // Iterate through the nums array and keep elements that are not equal to `val`
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[k] = nums[i];  // Put the non-val element at the "next available" position
        k++;  // Increase the count of valid elements
      }
    }
    
    return k;  // Return the number of valid elements
  }
}
