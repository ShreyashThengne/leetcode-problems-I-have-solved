class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:
        d1 = {}
        d2 = {}
        for i in range(len(s)):
            try:
                if d1[s[i]] != t[i]:
                    return False
            except:
                try:
                    if d2[t[i]] != s[i]:
                        return False
                except:
                    print(s[i], t[i])
                    d1[s[i]] = t[i]
                    d2[t[i]] = s[i]
        return True