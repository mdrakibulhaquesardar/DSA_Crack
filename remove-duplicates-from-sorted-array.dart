/*
https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/

 */

void main() {
  Solution solution = Solution();

  List<int> nums = [1, 1, 2];
  int k = solution.removeDuplicates(nums);

  // The length of unique elements will be k, and the first k elements will be unique
  print("The length of unique elements: $k");
  print("The unique elements in the array: ${nums.sublist(0, k)}");
}

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) {
      return 0; // If the list is empty, return 0
    }

    int k = 1; // Start from the second element
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1]) {
        nums[k] =
            nums[i]; // Place the unique element at the next available position
        k++; // Increment the counter for unique elements
      }
    }

    return k; // Return the length of the array with unique elements
  }
}
