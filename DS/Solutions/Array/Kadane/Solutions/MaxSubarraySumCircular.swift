/*
 
 918. Maximum Sum Circular Subarray
 
 Given a circular integer array nums of length n, return the maximum possible sum of a non-empty subarray of nums.

 A circular array means the end of the array connects to the beginning of the array. Formally, the next element of nums[i] is nums[(i + 1) % n] and the previous element of nums[i] is nums[(i - 1 + n) % n].

 A subarray may only include each element of the fixed buffer nums at most once. Formally, for a subarray nums[i], nums[i + 1], ..., nums[j], there does not exist i <= k1, k2 <= j with k1 % n == k2 % n.

 Example 1:

 Input: nums = [1,-2,3,-2]
 Output: 3
 Explanation: Subarray [3] has maximum sum 3.
 Example 2:

 Input: nums = [5,-3,5]
 Output: 10
 Explanation: Subarray [5,5] has maximum sum 5 + 5 = 10.
 Example 3:

 Input: nums = [-3,-2,-3]
 Output: -2
 Explanation: Subarray [-2] has maximum sum -2.
  

 Constraints:

 n == nums.length
 1 <= n <= 3 * 104
 -3 * 104 <= nums[i] <= 3 * 104
 
 */

extension ArrayKadane {
    func maxSubarraySumCircular() {
        let result = maxSubarraySumCircular([5,-3,5])
        debugPrint(result)
    }
    
    private func maxSubarraySumCircular(_ nums: [Int]) -> Int {
        let totalSum = getTotalSum(nums)
        let maxSum = getKadaneMax(nums)
        let minSum = getKadaneMin(nums)
        let circularSum = totalSum - minSum
        
        if maxSum > 0 {
            return max(maxSum, circularSum)
        }
        
        return maxSum
    }
    
    private func getKadaneMax(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var currentSum = nums[0]
        
        for i in 1..<nums.count {
            currentSum = max(currentSum + nums[i], nums[i])
            maxSum = max(maxSum, currentSum)
        }
        
        return maxSum
    }
    
    private func getKadaneMin(_ nums: [Int]) -> Int {
        var minSum = nums[0]
        var currentSum = nums[0]
        
        for i in 1..<nums.count {
            currentSum = min(currentSum + nums[i], nums[i])
            minSum = min(minSum, currentSum)
        }
        
        return minSum
    }
    
    private func getTotalSum(_ nums: [Int]) -> Int {
        var sum = 0
        
        for num in nums {
            sum += num
        }
        
        return sum
    }
}
