class Solution:
    def removeStars(self, s: str) -> str:
        word = []
        for i in range(len(s)):
            if s[i] == "*":
                word.pop()
            else:
                word.append(s[i])
        st = ""
        for ch in word:
            st += ch
        return st