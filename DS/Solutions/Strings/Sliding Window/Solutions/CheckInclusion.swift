/*
 
 567. Permutation in String
 
 Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.

 In other words, return true if one of s1's permutations is the substring of s2.

  

 Example 1:

 Input: s1 = "ab", s2 = "eidbaooo"
 Output: true
 Explanation: s2 contains one permutation of s1 ("ba").
 Example 2:

 Input: s1 = "ab", s2 = "eidboaoo"
 Output: false
  

 Constraints:

 1 <= s1.length, s2.length <= 104
 s1 and s2 consist of lowercase English letters.
 
*/

extension StringSlidingWindow {
    func checkInclusion() {
        let result = checkInclusion("ab", "eidboaoo")
        debugPrint(result)
    }
    
    private func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        if s2.count < s1.count {
            return false
        }
        
        var charDict: [Character: Int] = [:]
        var count = s1.count
        var charArr: [Character] = Array(s2)
        var l = 0
        
        for char in s1 {
            charDict[char, default: 0] += 1
        }
        
        for i in 0..<s2.count {
            let currentChar = charArr[i]
            if charDict[currentChar, default: 0] > 0 {
                count -= 1
            }
            
            charDict[currentChar, default: 0] -= 1
            
            if i-l+1 > s1.count {
                let lChar = charArr[l]
                if charDict[lChar, default: 0] >= 0 {
                    count += 1
                }
                
                charDict[lChar, default: 0] += 1
                l += 1
            }
            
            if count == 0 {
                return true
            }
        }
        
        return false
    }
}
