/*
 
 647. Palindromic Substrings
 
 Given a string s, return the number of palindromic substrings in it.

 A string is a palindrome when it reads the same backward as forward.

 A substring is a contiguous sequence of characters within the string.

  

 Example 1:

 Input: s = "abc"
 Output: 3
 Explanation: Three palindromic strings: "a", "b", "c".
 Example 2:

 Input: s = "aaa"
 Output: 6
 Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".
  

 Constraints:

 1 <= s.length <= 1000
 s consists of lowercase English letters.
 
 */

extension StringTwoPointers {
    func countSubstrings() {
        let result = countSubstrings("abc")
        debugPrint(result)
    }
    
    private func countSubstrings(_ s: String) -> Int {
        if s.count < 2 {
            return s.count
        }
        
        var count = 0
        let chars = Array(s)
                
        for i in 0..<s.count {
            let oddCount = getPalindromeCount(chars: chars, start: i, end: i)
            let evenCount = getPalindromeCount(chars: chars, start: i, end: i + 1)
            count += oddCount
            count += evenCount
        }
        
        return count
    }
    
    private func getPalindromeCount(chars: [Character], start: Int, end: Int) -> Int {
        var l = start
        var r = end
        
        var count = 0
        
        while l >= 0 && r < chars.count && chars[l] == chars[r] {
            count += 1
            l -= 1
            r += 1
        }
        
        return count
    }
}
