/*
 
 438. Find All Anagrams in a String
 
 Given two strings s and p, return an array of all the start indices of p's anagrams in s. You may return the answer in any order.

  

 Example 1:

 Input: s = "cbaebabacd", p = "abc"
 Output: [0,6]
 Explanation:
 The substring with start index = 0 is "cba", which is an anagram of "abc".
 The substring with start index = 6 is "bac", which is an anagram of "abc".
 Example 2:

 Input: s = "abab", p = "ab"
 Output: [0,1,2]
 Explanation:
 The substring with start index = 0 is "ab", which is an anagram of "ab".
 The substring with start index = 1 is "ba", which is an anagram of "ab".
 The substring with start index = 2 is "ab", which is an anagram of "ab".
  

 Constraints:

 1 <= s.length, p.length <= 3 * 104
 s and p consist of lowercase English letters.
 
*/

extension StringSlidingWindow {
    func findAnagrams() {
        let result = findAnagrams("baa", "aa")
        debugPrint(result)
    }
    
    private func findAnagrams(_ s: String, _ p: String) -> [Int] {
        if s.count < p.count {
            return []
        }
        
        var charArr: [Character] = Array(s)
        var charDict: [Character: Int] = [:]
        var count = p.count
        var result: [Int] = []
        var l = 0
        var r = 0
        
        for char in p {
            charDict[char, default: 0] += 1
        }
        
        while r < charArr.count {
            if let val = charDict[charArr[r]] {
                charDict[charArr[r]] = val - 1
                
                if val - 1 >= 0 {
                    count -= 1
                }
                
                if count == 0 {
                    result.append(l)
                }
            }

            r += 1
            
            if r-l+1 > p.count {
                
                if let charVal = charDict[charArr[l]] {
                    if charVal >= 0 {
                        count += 1
                    }
                    charDict[charArr[l]] = charVal + 1
                }
                
                l += 1
            }
        }
                                      
        return result
    }
}
