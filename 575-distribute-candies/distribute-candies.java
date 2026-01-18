class Solution {
    public int distributeCandies(int[] candyType) {
        int n = candyType.length;

        Set<Integer> set = new HashSet<>();
        for(int num:candyType)
        {
            set.add(num);
        }

        int maxSheEat = n/2;

        return Math.min(set.size(),maxSheEat); 
    }
}