/*
 
 1749. Maximum Absolute Sum of Any Subarray
 
 You are given an integer array nums. The absolute sum of a subarray [numsl, numsl+1, ..., numsr-1, numsr] is abs(numsl + numsl+1 + ... + numsr-1 + numsr).

 Return the maximum absolute sum of any (possibly empty) subarray of nums.

 Note that abs(x) is defined as follows:

 If x is a negative integer, then abs(x) = -x.
 If x is a non-negative integer, then abs(x) = x.
  

 Example 1:

 Input: nums = [1,-3,2,3,-4]
 Output: 5
 Explanation: The subarray [2,3] has absolute sum = abs(2+3) = abs(5) = 5.
 Example 2:

 Input: nums = [2,-5,1,-4,3,-2]
 Output: 8
 Explanation: The subarray [-5,1,-4] has absolute sum = abs(-5+1-4) = abs(-8) = 8.
 
 Constraints:

 1 <= nums.length <= 105
 -104 <= nums[i] <= 104
 
 */

extension ViewController {
    func maxAbsoluteSum() {
        let result = maxAbsoluteSum([-7,-1,0,-2,1,3,8,-2,-6,-1,-10,-6,-6,8,-4,-9,-4,1,4,-9])
        debugPrint(result)
    }
    
    private func maxAbsoluteSum(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var minSum = nums[0]
        
        var currentMaxSum = nums[0]
        var currentMinSum = nums[0]
        
        for i in 1..<nums.count {
            currentMaxSum = max(currentMaxSum + nums[i], nums[i])
            maxSum = max(currentMaxSum, maxSum)
            
            currentMinSum = min(currentMinSum + nums[i], nums[i])
            minSum = min(currentMinSum, minSum)
        }
        
        return max(maxSum, abs(minSum))
    }
}
