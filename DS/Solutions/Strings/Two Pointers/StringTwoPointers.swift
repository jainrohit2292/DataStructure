enum StringTwoPointersProblem {
    case reverseString,
         validPalindrome,
         validPalindrome2,
         longestPalindrome,
         countSubstrings
}

struct StringTwoPointers: StringProblemTypeProtocol {
    
    let currentType: StringTwoPointersProblem = .countSubstrings
    
    func executeStringProblem() {
        switch currentType {
        case .reverseString:
            reverseString()
        case .validPalindrome:
            isPalindrome()
        case .validPalindrome2:
            isPalindrome2()
        case .longestPalindrome:
            getLongestPalindrome()
        case .countSubstrings:
            countSubstrings()
        }
    }
}
