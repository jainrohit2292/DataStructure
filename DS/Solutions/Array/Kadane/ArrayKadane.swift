enum ArrayKadaneProblem {
    case maxSubArray,
         maxProduct,
         maxSubarraySumCircular,
         maxAbsoluteSum
}

struct ArrayKadane: ArrayProblemTypeProtocol {
    
    let currentType: ArrayKadaneProblem = .maxSubArray
    
    func executeArrayProblem() {
        
        switch currentType {
        case .maxSubArray:
            maxSubArray()
        case .maxProduct:
            maxProduct()
        case .maxSubarraySumCircular:
            maxSubarraySumCircular()
        case .maxAbsoluteSum:
            maxAbsoluteSum()
        }
    }
}
