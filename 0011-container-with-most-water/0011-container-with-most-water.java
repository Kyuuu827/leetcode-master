class Solution {
    public int maxArea(int[] height) {
        int max = 0;
        int start = 0;
        int end = height.length - 1;

        while(start < end) {
            int w = end - start;
            int h = Math.min(height[start], height[end]);
            max = Math.max(max, w*h);
            if(height[start]>=height[end]) end--;
    	    else start++;
        }

        return max;
    }
}