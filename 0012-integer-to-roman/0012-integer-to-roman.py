class Solution:
    def intToRoman(self, num: int) -> str:
        roman_dict = {
            "M": 1000,
            "CM": 900,
            "D": 500,
            "CD": 400,
            "C": 100,
            "XC": 90,
            "L": 50,
            "XL": 40,
            "X": 10,
            "IX": 9,
            "V": 5,
            "IV": 4,
            "I": 1,
        }
        
        cursor = 0
        roman_list = []
        for k in roman_dict:
            while True:
                if num - roman_dict[k] >= 0:
                    num -= roman_dict[k]
                    roman_list.append(k)
                else:
                    break
        answer = "".join(roman_list)
        
        return answer
        
        
        