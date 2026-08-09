/*
 
 2461. Maximum Sum of Distinct Subarrays With Length K
 
 You are given an integer array nums and an integer k. Find the maximum subarray sum of all the subarrays of nums that meet the following conditions:

 The length of the subarray is k, and
 All the elements of the subarray are distinct.
 Return the maximum subarray sum of all the subarrays that meet the conditions. If no subarray meets the conditions, return 0.

 A subarray is a contiguous non-empty sequence of elements within an array.
 
 Example 1:

 Input: nums = [1,5,4,2,9,9,9], k = 3
 Output: 15
 Explanation: The subarrays of nums with length 3 are:
 - [1,5,4] which meets the requirements and has a sum of 10.
 - [5,4,2] which meets the requirements and has a sum of 11.
 - [4,2,9] which meets the requirements and has a sum of 15.
 - [2,9,9] which does not meet the requirements because the element 9 is repeated.
 - [9,9,9] which does not meet the requirements because the element 9 is repeated.
 We return 15 because it is the maximum subarray sum of all the subarrays that meet the conditions
 Example 2:

 Input: nums = [4,4,4], k = 3
 Output: 0
 Explanation: The subarrays of nums with length 3 are:
 - [4,4,4] which does not meet the requirements because the element 4 is repeated.
 We return 0 because no subarrays meet the conditions.
  

 Constraints:

 1 <= k <= nums.length <= 105
 1 <= nums[i] <= 105
 
*/

extension ViewController {
    func maximumSubarraySum() {
        let result = maximumSubarraySum([9,9,9,1,2,3], 3)
        debugPrint(result)
    }
    
    private func maximumSubarraySum(_ nums: [Int], _ k: Int) -> Int {
        
        var windowSum = 0
        var frequencies: [Int: Int] = [:]
        
        for i in 0..<k {
            windowSum += nums[i]
            let count = frequencies[nums[i]] ?? 0
            frequencies[nums[i]] = count + 1
        }
        
        var maxSum = windowSum
        
        if frequencies.count != k {
            maxSum = 0
        }
        
        for j in k..<nums.count {
            windowSum = windowSum + nums[j]
            windowSum = windowSum - nums[j-k]
            
            let prevCount = frequencies[nums[j-k]] ?? 0
            let updatedCount = prevCount > 1 ? prevCount - 1 : 0
            if updatedCount == 0 {
                frequencies.removeValue(forKey: nums[j-k])
            } else {
                frequencies[nums[j-k]] = updatedCount
            }
            
            let currentCount = frequencies[nums[j]] ?? 0
            frequencies[nums[j]] = currentCount + 1
            
            if frequencies.count == k {
                maxSum = max(windowSum, maxSum)
            }
        }
        
        return maxSum
    }
}
