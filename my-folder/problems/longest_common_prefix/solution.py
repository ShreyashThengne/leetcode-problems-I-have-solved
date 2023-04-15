class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if len(strs) == 1:
            return strs[0]
        pf = strs[0]
        res = ""
        for s in strs[1:]:
            res = ""
            for i in range(len(min(pf, s))):
                if pf[i] != s[i]:
                    break
                res += pf[i]
            pf = res
        return res