class Solution {
    public boolean isPalindrome(int x) {
        if (x < 0 || (x != 0 && x % 10 == 0)) { return false; }
        String xStr = String.valueOf(x);
        StringBuilder sb = new StringBuilder();
        sb.append(xStr);
        return sb.reverse().toString().equals(xStr);

    }
}