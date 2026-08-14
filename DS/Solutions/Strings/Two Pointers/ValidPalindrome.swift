/*
 
 125. Valid Palindrome
 
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

  

 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 Example 2:

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 Example 3:

 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
  

 Constraints:

 1 <= s.length <= 2 * 105
 s consists only of printable ASCII characters.
 
*/

extension ViewController {
    func isPalindrome() {
        let result = isPalindrome("race a car")
        debugPrint(result)
    }
    
    private func isPalindrome(_ s: String) -> Bool {
        
        var left = s.startIndex
        var right = s.index(before: s.endIndex)
        
        while left < right {
            let leftChar = s[left]
            let righChar = s[right]
            
            if !leftChar.isLetter && !leftChar.isNumber {
                left = s.index(after: left)
            } else if !righChar.isLetter && !righChar.isNumber {
                right = s.index(before: right)
            } else if leftChar.lowercased() == righChar.lowercased() {
                left = s.index(after: left)
                right = s.index(before: right)
            } else {
                return false
            }
        }
        
        return true
    }
}
