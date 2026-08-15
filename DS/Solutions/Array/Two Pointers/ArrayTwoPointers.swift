enum ArrayTwoPointersProblem {
    case moveZeroes,
         twoSum,
         threeSum,
         sortColors,
         containerWithMostWater
}

struct ArrayTwoPointers: ArrayProblemTypeProtocol {
    
    let currentType: ArrayTwoPointersProblem = .moveZeroes
    
    func executeArrayProblem() {
        switch currentType {
        case .moveZeroes:
            moveZeroes()
        case .twoSum:
            twoSum()
        case .threeSum:
            threeSum()
        case .sortColors:
            sortColors()
        case .containerWithMostWater:
            maxArea()
        }
    }
}
