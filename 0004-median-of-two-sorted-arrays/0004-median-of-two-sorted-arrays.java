class Solution {
    public double findMedianSortedArrays(int[] nums1, int[] nums2) {
        double result = 0;
        List<Integer> mergedList = new ArrayList<>();
        List<Integer> nums1List = Arrays.stream(nums1).boxed().toList();
        List<Integer> nums2List = Arrays.stream(nums2).boxed().toList();
        mergedList.addAll(nums1List);
        mergedList.addAll(nums2List);

        mergedList.sort(null);

        int listLength = mergedList.size();
        if (listLength % 2 != 0) {
            return mergedList.get(listLength / 2);
        } else {
            result = (double) (mergedList.get(listLength / 2 - 1) + mergedList.get(listLength / 2)) / 2;
        }

        return result;
    }
}