/*
 
 283. Move Zeroes
 
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.

  

 Example 1:

 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 Example 2:

 Input: nums = [0]
 Output: [0]
  

 Constraints:

 1 <= nums.length <= 104
 -231 <= nums[i] <= 231 - 1
  

 Follow up: Could you minimize the total number of operations done?
 
*/

extension ArrayTwoPointers {
    func moveZeroes() {
        var nums = [0,1,0,3,12]
        moveZeroes(&nums)
        print(nums)
    }
    
    private func moveZeroes(_ nums: inout [Int]) {
        if nums.count < 2 {
            return
        }
        
        var l = 0
        var r = 1
        var temp = 0
        
        while r < nums.count {
            if nums[l] == 0 {
                if nums[r] == 0 {
                    r += 1
                } else {
                    temp = nums[l]
                    nums[l] = nums[r]
                    nums[r] = temp
                    l += 1
                    r += 1
                }
            } else {
                l += 1
                r += 1
            }
        }
    }
}
