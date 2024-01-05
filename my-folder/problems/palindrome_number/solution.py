class Solution:
    def isPalindrome(self, x: int) -> bool:
        new = ''
        x = str(x)
        for i in range(1, len(x)+1):
            new += x[-i]
        if new[:len(new)//2] == x[:len(x)//2]:
            return True
        return False
