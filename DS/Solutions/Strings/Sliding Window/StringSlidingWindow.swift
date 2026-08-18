enum StringSlidingWindowProblem {
    case findAnagrams, checkInclusion
}

struct StringSlidingWindow: StringProblemTypeProtocol {
    
    let currentType: StringSlidingWindowProblem = .checkInclusion
    
    func executeStringProblem() {
        switch currentType {
        case .findAnagrams:
            findAnagrams()
            
        case .checkInclusion:
            checkInclusion()
        }
    }
}
