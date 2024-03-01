class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        int size = nums.size();
        long long sum = 0;
        long long max_sum = LONG_MIN;

        for (int i = 0; i < size; i++){
            sum += nums[i];
            cout<<max_sum<<endl;
            if (sum > max_sum){
                max_sum = sum;
            }

            if (sum < 0){
                sum = 0;
            }
        }
        return max_sum;

    }
};