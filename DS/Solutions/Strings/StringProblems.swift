enum StringProblemType {
    case twoPointer
}

protocol StringProblemTypeProtocol {
    associatedtype ProblemType
    
    var currentType: ProblemType { get }
    
    func executeStringProblem()
}

struct StringProblems: DSProblemTypeProtocol {
    let currentType: StringProblemType = .twoPointer
    
    func executeProblem() {
        var problemType: (any StringProblemTypeProtocol)?
        
        switch currentType {
        case .twoPointer:
            problemType = StringTwoPointers()
        }
        
        problemType?.executeStringProblem()
    }
}
