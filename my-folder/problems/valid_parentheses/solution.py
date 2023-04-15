class Solution:
    def isValid(self, s: str) -> bool:
        stack = []

        for brac in s:
            if brac == '(' or brac =='{' or brac == '[':
                stack.append(brac)
            else:
                if not stack:
                    return False
                if brac == ')' and stack[-1] == '(':
                    stack.pop()
                elif brac == '}' and stack[-1] == '{':
                    stack.pop()
                elif brac == ']' and stack[-1] == '[':
                    stack.pop()
                else:
                    return False

        if len(stack) == 0:
            return True
        return False