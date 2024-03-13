class Solution:
    def majorityElement(self, nums: List[int]) -> List[int]:
        d = {}
        n = len(nums)
        res = []
        for i in nums:
            try:
                d[i] += 1
            except:
                d[i] = 1
        for i in d:
            if d[i] > n//3:
                res.append(i)
        return res