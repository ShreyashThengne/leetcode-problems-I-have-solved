class Solution {
public:
    vector<int> rearrangeArray(vector<int>& a) {
    int pos = 0;
    int neg = 1;
    int size = a.size();
    vector<int> a2(size, 0);

    for(int i = 0; i < size; i++){
        if (a[i] < 0) {
            a2[neg] = a[i];
            neg = neg + 2;
        }
        if (a[i] > 0) {
            a2[pos] = a[i];
            pos = pos + 2;
        }
    }
    return a2;
    }
};