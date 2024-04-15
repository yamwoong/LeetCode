class Solution {
    public int[] sortedSquares(int[] nums) {
        int[] arr = new int[nums.length];
        int temp  = 0;
        for(int i = 0; i < nums.length; i++){
            temp = nums[i];
            temp = temp * temp;
            arr[i] = temp;
        }
        Arrays.sort(arr);
        return arr;
    }
}