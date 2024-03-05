class Solution:
    def largestOddNumber(self, num: str) -> str:
        while(len(num) != 0):
            if int(num[-1])%2 != 0:
                return num
            num = num[:-1]
        return ""
