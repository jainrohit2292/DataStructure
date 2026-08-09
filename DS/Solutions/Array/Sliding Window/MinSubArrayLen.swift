/*
 
 209. Minimum Size Subarray Sum
 
 Given an array of positive integers nums and a positive integer target, return the minimal length of a subarray whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.
  

 Example 1:

 Input: target = 7, nums = [2,3,1,2,4,3]
 Output: 2
 Explanation: The subarray [4,3] has the minimal length under the problem constraint.
 Example 2:

 Input: target = 4, nums = [1,4,4]
 Output: 1
 Example 3:

 Input: target = 11, nums = [1,1,1,1,1,1,1,1]
 Output: 0
  

 Constraints:

 1 <= target <= 109
 1 <= nums.length <= 105
 1 <= nums[i] <= 104
  

 Follow up: If you have figured out the O(n) solution, try coding another solution of which the time complexity is O(n log(n)).
 
*/

extension ViewController {
    func minSubArrayLen() {
        let result = minSubArrayLen(7, [2,3,1,2,4,3])
        debugPrint(result)
    }
    
    private func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        
        var minVal = 0
        var l = 0
        var sum = 0
        
        for r in 0..<nums.count {
            sum += nums[r]
            
            while sum >= target {
                sum -= nums[l]
                if minVal == 0 {
                    minVal = r-l+1
                } else {
                    minVal = min(minVal, r-l+1)
                }
                l += 1
            }
        }
        
        return minVal
    }
}
