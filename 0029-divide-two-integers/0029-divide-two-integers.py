class Solution:
    def divide(self, dividend: int, divisor: int) -> int:
                # overflow에 대한 예외 처리를 해준다
        if (dividend == -2147483648 and divisor == -1): 
            return 2147483647

        # dividend, divisor의 부호에 따라 정해지는 몫의 부호가 된다.
        multiplier = 1

        # dividend, divisor를 모두 계산하기 편하게 양수로 바꿨다.
        if dividend < 0:
            dividend = -dividend
            multiplier = -multiplier
        if divisor < 0:
            divisor = -divisor
            multiplier = -multiplier

        # 남은 빼야 할 수
        left = dividend
        # 몫
        quotient = 0

        # 남은 수가 divisor보다 크거나 같을 때만 계속 반복할 수 있다.
        while left >= divisor:
            # 내부 while loop에서 사용할 임시 몫(divisor를 빼는 횟수)이다. 
            temporalQuotient = 1
            # 빼게 될 수다. 우리의 목표는 이 currentNumber의 최댓값을 구하는 것이다.
            currentNumber = divisor
            # 빼야 할 최대 수를 구한다.
            while True:
                nextNumber = currentNumber << 1

                # 뺄 수가 남은 수보다 작거나 같으면 뺄 수 있다
                if nextNumber <= left:
                    # 빼는 횟수, 뺄 수를 모두 두 배로 만든다.
                    temporalQuotient = temporalQuotient << 1
                    currentNumber = nextNumber
                # 만약 빼야 할 수가 남은 수보다 더 커지게 되면 진행 할 수 없다.
                else:
                    left -= currentNumber
                    quotient += temporalQuotient
                    break

        return quotient * multiplier

#         if (dividend == -2147483648 and divisor == -1): 
#             return 2147483647
#         minus_value = 1
#         if dividend < 0:
#             dividend = -dividend
#             minus_value *= -1
#         if divisor < 0:
#             divisor = -divisor
#             minus_value *= -1
#         if divisor == 1:
#             return dividend * minus_value
        
#         num = dividend
#         cnt = 0
        
#         while num >= divisor:
#             num = num - divisor
#             cnt += 1

#         return cnt * minus_value
    
    
    