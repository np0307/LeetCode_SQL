class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map <Integer,Integer> num = new HashMap<>();

        for(int i=0;i<nums.length;i++)
        {
            int cn = nums[i];
            int req = target - cn;
        
            if(num.containsKey(req))
            {
                return new int[] {num.get(req),i};
            }
            num.put(cn,i);
        }
        return new int[] {-1,-1};
}
}