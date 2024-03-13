class Solution {
    public int reverse(int x) {
        try {
            if (Math.pow(2, 31) -1 < x || x < Math.pow(-2, 31)) return 0;

            StringBuilder sb = new StringBuilder();

            if (x > 0) {
                String value = String.valueOf(x);
                return Integer.parseInt(sb.append(value).reverse().toString());
            }

            if (x < 0) {
                String value = String.valueOf(x);
                return Integer.parseInt("-" + sb.append(value.substring(1)).reverse());

            }

            return 0;
        }
        catch (NumberFormatException e) {
            return 0;
        }
    }
}