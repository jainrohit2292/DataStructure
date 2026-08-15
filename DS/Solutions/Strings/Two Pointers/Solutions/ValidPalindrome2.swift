/*
 
 680. Valid Palindrome II
 
 Given a string s, return true if the s can be palindrome after deleting at most one character from it.

  

 Example 1:

 Input: s = "aba"
 Output: true
 Example 2:

 Input: s = "abca"
 Output: true
 Explanation: You could delete the character 'c'.
 Example 3:

 Input: s = "abc"
 Output: false
  

 Constraints:

 1 <= s.length <= 105
 s consists of lowercase English letters.
 
 */

extension StringTwoPointers {
    func isPalindrome2() {
        let result = validPalindrome("aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga")
        debugPrint(result)
    }
    
    private func validPalindrome(_ s: String) -> Bool {
        let start = s.startIndex
        let end = s.index(before: s.endIndex)
        let palindromeValue = isPalindrome(s: s, l: start, r: end)
        
        if palindromeValue.isPalindrome {
            return true
        } else {
            let leftPalindromeVal = isPalindrome(s: s, l: s.index(after: palindromeValue.left), r: palindromeValue.right)
            let rightPalindromeVal = isPalindrome(s: s, l: palindromeValue.left, r: s.index(before: palindromeValue.right))
            
            return leftPalindromeVal.isPalindrome || rightPalindromeVal.isPalindrome
        }
    }
    
    private func isPalindrome(s: String, l: String.Index, r: String.Index) -> (left: String.Index, right: String.Index, isPalindrome: Bool) {
        var start = l
        var end = r
        
        while start < end {
            if s[start] == s[end] {
                start = s.index(after: start)
                end = s.index(before: end)
            } else {
                return (start, end, false)
            }
        }
        
        return (start, end, true)
    }
}
