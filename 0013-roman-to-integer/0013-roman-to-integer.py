class Solution:
    def romanToInt(self, s: str) -> int:
        answer = 0
        cursor = 0
        roman_dict = {
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        }
        
        while True:
            if cursor > len(s):
                break
            if cursor + 1 < len(s) and roman_dict[s[cursor]] < roman_dict[s[cursor + 1]]:
                answer += (roman_dict[s[cursor + 1]] - roman_dict[s[cursor]])
                cursor += 1
            elif cursor < len(s):
                answer += roman_dict[s[cursor]]

            cursor += 1
            
        return answer