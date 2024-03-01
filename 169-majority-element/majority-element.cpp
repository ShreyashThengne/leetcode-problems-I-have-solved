class Solution {
public:
    int majorityElement(vector<int>& nums) {
        int counter = 0;
        int j = 0;
        for (int i = 0; i < nums.size(); i++){
            if (nums[i] == nums[j]){counter++;}
            else{counter--;}
            if(counter == 0){
                j = i + 1;
            }
        }
        return nums[j];
    }
};