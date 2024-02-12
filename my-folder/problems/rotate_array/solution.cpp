class Solution {
public:
    void rotate(vector<int>& nums, int k) {
        reverse(nums, 0, nums.size() - 1);
        reverse(nums, 0, k%nums.size() - 1)
        ;
        reverse(nums, k%nums.size(), nums.size() - 1);
    }

    void reverse(vector<int> &vec, int s, int e){
        while(s < e){
            swap(vec[s++], vec[e--]);
        }
    }
};