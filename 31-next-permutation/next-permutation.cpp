class Solution {
public:
    void nextPermutation(vector<int>& nums) {
        int size = nums.size();
        int k = -1;
        for(int i = size - 1; i > 0; i--){
            if (nums[i-1] < nums[i]){
                k = i - 1;
                break;
            }
        }
        
        if (k == -1){
            reverse(nums.begin(), nums.end());
        }
        else{
            for (int j = size - 1; j >= k; j--){
                cout<<j<<endl;
                if (nums[j] > nums[k]){
                    swap(nums[k], nums[j]);
                    break;
                }
            }
            reverse(nums.begin() + k + 1, nums.end());
        }
    }
};