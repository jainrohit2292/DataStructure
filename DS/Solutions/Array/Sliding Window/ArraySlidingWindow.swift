enum ArraySlidingWindowProblem {
    case maximumSubarraySum,
         findMaxConsecutiveOnes,
         longestOnes,
         numSubarrayProductLessThanK,
         totalFruit,
         minSubArrayLen
}

struct ArraySlidingWindow: ArrayProblemTypeProtocol {
    
    let currentType: ArraySlidingWindowProblem = .maximumSubarraySum
    
    func executeArrayProblem() {
        
        switch currentType {
        case .maximumSubarraySum:
            maximumSubarraySum()
        case .findMaxConsecutiveOnes:
            findMaxConsecutiveOnes()
        case .longestOnes:
            longestOnes()
        case .numSubarrayProductLessThanK:
            numSubarrayProductLessThanK()
        case .totalFruit:
            totalFruit()
        case .minSubArrayLen:
            minSubArrayLen()
        }
    }
}

