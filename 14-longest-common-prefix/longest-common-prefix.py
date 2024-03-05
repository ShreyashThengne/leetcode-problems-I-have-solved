class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        word = strs[0]
        for i in range(1, len(strs)):
            while strs[i].find(word) != 0:
                word = word[:-1]
        return word