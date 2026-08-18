enum StringProblemType {
    case twoPointer, slidingWindow
}

protocol StringProblemTypeProtocol {
    associatedtype ProblemType
    
    var currentType: ProblemType { get }
    
    func executeStringProblem()
}

struct StringProblems: DSProblemTypeProtocol {
    let currentType: StringProblemType = .slidingWindow
    
    func executeProblem() {
        var problemType: (any StringProblemTypeProtocol)?
        
        switch currentType {
        case .twoPointer:
            problemType = StringTwoPointers()
        case .slidingWindow:
            problemType = StringSlidingWindow()
        }
        
        problemType?.executeStringProblem()
    }
}
