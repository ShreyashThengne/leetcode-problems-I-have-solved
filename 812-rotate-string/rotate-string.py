class Solution:
    def rotateString(self, s: str, goal: str) -> bool:
        if s in (goal + goal) and len(s) == len(goal):
            return True
        return False