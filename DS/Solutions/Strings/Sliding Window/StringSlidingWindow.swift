enum StringSlidingWindowProblem {
    case findAnagrams
}

struct StringSlidingWindow: StringProblemTypeProtocol {
    
    let currentType: StringSlidingWindowProblem = .findAnagrams
    
    func executeStringProblem() {
        switch currentType {
        case .findAnagrams:
            findAnagrams()
        }
    }
}
