enum ArrayPrefixSumProblem {
    case pivotIndex,
         subarraySum,
         productExceptSelf,
         checkSubarraySum,
         subarraysDivByK
}

struct ArrayPefixSum: ArrayProblemTypeProtocol {
    
    let currentType: ArrayPrefixSumProblem = .pivotIndex
    
    func executeArrayProblem() {
        
        switch currentType {
        case .pivotIndex:
            pivotIndex()
        case .subarraySum:
            subarraySum()
        case .productExceptSelf:
            productExceptSelf()
        case .checkSubarraySum:
            checkSubarraySum()
        case .subarraysDivByK:
            subarraysDivByK()
        }
    }
}

