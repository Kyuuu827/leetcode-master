class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        r_list = list(ransomNote)
        m_list = list(magazine)
        for s in r_list:
            if s in m_list:
                m_list.remove(s)
            else:
                return False
        return True