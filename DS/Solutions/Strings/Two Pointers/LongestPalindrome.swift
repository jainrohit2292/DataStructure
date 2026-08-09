extension ViewController {
    
    func getLongestPalindrome() {
        let result = longestPalindrome("abb")
        print(result)
    }
    
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        
        let chars = Array(s)
        var longestString = "\(chars[0])"
        
        for i in 0..<chars.count {
            let s1 = palindromeSubstring(s: s, c: chars, _l: i, _r: i+1)
            let s2 = palindromeSubstring(s: s, c: chars, _l: i, _r: i)
            
            longestString = s1.count > longestString.count ? s1 : s2.count > longestString.count ? s2 : longestString
        }
        
        return longestString
    }
    
    func palindromeSubstring(s: String, c: [Character], _l: Int, _r: Int) -> String {
        var l = _l
        var r = _r
        var offset = 0
        
        while (l >= 0 && r<c.count && c[l] == c[r]) {
            offset = 1
            l -= 1
            r += 1
        }
        
        if offset != 0 {
            let start = s.index(s.startIndex, offsetBy: l+offset)
            let end = s.index(s.startIndex, offsetBy: r-offset)
            let substring = s[start...end]
            return String(substring)
        }
        return ""
    }
}
