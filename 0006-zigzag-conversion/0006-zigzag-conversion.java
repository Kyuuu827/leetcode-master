class Solution {
    public String convert(String s, int numRows) {
        if (numRows == 1) return s;

        ArrayList<ArrayList<Character>> list = new ArrayList<ArrayList<Character>>();
        for(int i=0; i<numRows; i++)
            list.add(new ArrayList<Character>());

        int row = 0;  // 행
        int zig = numRows - 2;
        int zigRow = 1;
        for(int i=0; i<s.length(); i++) {
            char str = s.charAt(i);

            if (row >= numRows && zig <=0) {
                row = 0;
                zig = numRows - 2;
                zigRow = 1;
            }

            if (row < numRows) {
                list.get(row).add(str);
                row++;
                continue;
            }

            if (zig > 0) {
                list.get(row - zigRow - 1).add(str);
                zig--;
                zigRow++;
            }
        }
        
        StringBuilder sb = new StringBuilder();
        for(int i=0; i<numRows; i++) {
            for(int j=0; j<list.get(i).size(); j++) {
                sb.append(list.get(i).get(j));
            }
        }

        return sb.toString();
    }
}