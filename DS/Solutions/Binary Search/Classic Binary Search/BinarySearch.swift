extension ViewController {
    func search() {
        let result = search([-1,0,3,5,9,12], 2)
        debugPrint(result)
    }
    
    private func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        var result = -1
        
        while l <= r {
            var mid  = (r+l) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                r = mid-1
            } else {
                l = mid+1
            }
        }
        
        return result
    }
}
