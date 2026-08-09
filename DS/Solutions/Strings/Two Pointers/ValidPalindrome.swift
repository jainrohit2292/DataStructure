extension ViewController {
    func isPalindrome() {
        let result = isPalindrome("0P")
        debugPrint(result)
    }
    
    private func isPalindrome(_ s: String) -> Bool {
        var arr: [String] = []
        for char in s {
            if char.isLetter || char.isNumber {
                arr.append(char.lowercased())
            }
        }
        
        var l = 0
        var r = arr.count-1
        
        while l < r {
            if arr[l] == arr[r] {
                l += 1
                r -= 1
            } else {
                return false
            }
        }
        
        return true
    }
}
