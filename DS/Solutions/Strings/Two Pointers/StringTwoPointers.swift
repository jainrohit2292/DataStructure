enum StringTwoPointersProblem {
    case reverseString,
         validPalindrome,
         validPalindrome2,
         longestPalindrome
}

struct StringTwoPointers: StringProblemTypeProtocol {
    
    let currentType: StringTwoPointersProblem = .validPalindrome2
    
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
        }
    }
}
