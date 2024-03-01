class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        map<int, int> mpp;
        int size = nums.size();
        int rem;
        for(int i = 0; i < size; i++){
            rem = target - nums[i];
            if (mpp.find(rem) != mpp.end()){
                return {i, mpp[rem]};
            }
            mpp[nums[i]] = i;
        }
        return {-1, -1};
    }
};