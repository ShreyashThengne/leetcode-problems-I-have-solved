#include <bits/stdc++.h>
class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int j = 0;
        int size = nums.size();
        for (int i = 0; i < size; i++){
            if (nums[i] != 0){
                swap(nums[i], nums[j]);
                j++;
            }
        }
    }
};