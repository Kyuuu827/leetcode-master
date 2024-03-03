class Solution {
    public String longestPalindrome(String s) {
        String maxStr = "";
        for (int i = 0; i < s.length(); i++) {
            String maxStr1 = checkPalindrome(s, i, i);
            String maxStr2 = checkPalindrome(s, i, i + 1);
            
            if (maxStr1.length() > maxStr.length() && maxStr1.length() >= maxStr2.length()) {
                maxStr = maxStr1;
            }
            if (maxStr2.length() > maxStr.length() && maxStr1.length() < maxStr2.length()) {
                maxStr = maxStr2;
            }
        }
        return maxStr;
    }
    
    public String checkPalindrome(String s, int left, int right) {
        while(left >= 0 && right < s.length()) {
            if (s.charAt(left) == s.charAt(right)) {
                right++;
                left--;
            } else {
                break;
            }
        }
        left++;
        right--;
        return s.substring(left, right + 1);
    }
}