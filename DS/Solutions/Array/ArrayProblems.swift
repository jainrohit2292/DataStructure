enum ArrayProblemType {
    case twoPointer, slidingWindow, prefixSum, kadane
}

protocol ArrayProblemTypeProtocol {
    associatedtype ProblemType
    
    var currentType: ProblemType { get }
    
    func executeArrayProblem()
}

struct ArrayProblems: DSProblemTypeProtocol {
    let currentType: ArrayProblemType = .twoPointer
    
    func executeProblem() {
        var problemType: (any ArrayProblemTypeProtocol)?
        
        switch currentType {
        case .twoPointer:
            problemType = ArrayTwoPointers()
        case .slidingWindow:
            problemType = ArraySlidingWindow()
        case .prefixSum:
            problemType = ArrayPefixSum()
        case .kadane:
            problemType = ArrayKadane()
        }
        
        problemType?.executeArrayProblem()
    }
}
