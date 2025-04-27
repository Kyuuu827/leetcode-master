class Solution {
    public boolean isMatch(String s, String p) {
        return check(s, p);
    }

    boolean check(String s, String p) {
        if (p.length() == 0) {
            if (s.length() != 0) {
                return false;
            } else {
                return true;
            }
        }

        char c = p.charAt(0);

        if (p.length() >= 2 && p.charAt(1) == '*') {
            if (c == '.') {
                for (int i = 0; i <= s.length(); i++) {
                    if (check(s.substring(i), p.substring(2))) {
                        return true;
                    }
                }
            } else {
                for (int i = 0; i <= s.length(); i++) {
                    if (i == 0) {
                        if (check(s, p.substring(2))) {
                            return true;
                        }
                    } else {
                        if (c == s.charAt(i - 1)) {
                            if (check(s.substring(i), p.substring(2))) {
                                return true;
                            }
                        } else {
                            break;
                        }
                    }
                }
            }
        } else {
            if (c == '.') {
                if (s.length() == 0) {
                    return false;
                } else {
                    return check(s.substring(1), p.substring(1));
                }
            } else {
                if (s.length() == 0 || s.charAt(0) != c) {
                    return false;
                } else {
                    return check(s.substring(1), p.substring(1));
                }
            }
        }
        return false;
    }
}