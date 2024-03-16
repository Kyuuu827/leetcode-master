class Solution {
    public int searchInsert(int[] nums, int target) {
        List<Integer> numsList = Arrays.stream(nums).boxed().collect(Collectors.toList());
        
        if (numsList.contains(target)) return numsList.indexOf(target);;

        for (Integer num : numsList) {
            if (num > target) return numsList.indexOf(num);
        }
        
        return numsList.size();
    }
}