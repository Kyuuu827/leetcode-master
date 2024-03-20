class Solution {
    public String longestCommonPrefix(String[] strs) {
        StringBuilder sb = new StringBuilder();
        if (strs.length == 0) return "";

        for (int i = 0; i < getShortestLength(strs); i++) {
            sb.append(strs[0].charAt(i));
            for (String str : strs) {
                if (sb.charAt(i) != str.charAt(i)) {
                    return sb.substring(0, i);
                }
            }
        }
        return sb.toString();
    }

    public int getShortestLength(String[] strs) {
        int min = Integer.MAX_VALUE;
        for (String str : strs) {
            min = Math.min(min, str.length());
        }
        return min;
    }
}