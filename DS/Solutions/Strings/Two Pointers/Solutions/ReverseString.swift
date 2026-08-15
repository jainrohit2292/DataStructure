/*
 
 344. Reverse String
 
 Write a function that reverses a string. The input string is given as an array of characters s.

 You must do this by modifying the input array in-place with O(1) extra memory.

  

 Example 1:

 Input: s = ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 Example 2:

 Input: s = ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
  

 Constraints:

 1 <= s.length <= 105
 s[i] is a printable ascii character.
 
*/

extension StringTwoPointers {
    func reverseString() {
        var chars: [Character] = ["h","e","l","l","o"]
        reverseString(&chars)
        debugPrint(chars)
    }
    
    private func reverseString(_ s: inout [Character]) {
        var currentChar: Character = s[0]
        var left = 0
        var right = s.count-1
        
        while (left < right) {
            currentChar = s[left]
            s[left] = s[right]
            s[right] = currentChar
            left += 1
            right -= 1
        }
    }
}
