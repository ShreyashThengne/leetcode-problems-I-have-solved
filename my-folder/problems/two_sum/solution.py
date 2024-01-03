class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        l = {}
        i = 0
        
        while i < len(nums):
            t = target - nums[i]
            if t in l:
                return [l[t], i]
            l[nums[i]] = i
            i += 1
