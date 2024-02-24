class Solution {
public:
    int missingNumber(vector<int>& nums) {
        int exp_sum = (nums.size())*(nums.size() + 1)/2;
        return exp_sum - accumulate(nums.begin(), nums.end(), 0);
    }
};