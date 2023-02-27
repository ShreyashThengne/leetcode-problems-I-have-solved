class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        j = 0
        for i in range(len(accounts)):
            if sum(accounts[i]) > sum(accounts[j]):
                j = i
        return sum(accounts[j])