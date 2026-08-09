extension ViewController {
    func isPalindrome2() {
        let result = validPalindrome("aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga")
        debugPrint(result)
    }
    
    private func validPalindrome(_ s: String) -> Bool {
        let arr = Array(s)
        let firstIteration = validPalindrome(_arr: arr, _l: 0, _r: s.count-1)
        if firstIteration.isValid {
            return true
        }
        
        let secondLeftIteration = validPalindrome(_arr: arr, _l: firstIteration.start+1, _r: firstIteration.end)
        let secondRightIteration = validPalindrome(_arr: arr, _l: firstIteration.start, _r: firstIteration.end-1)
        return secondLeftIteration.isValid || secondRightIteration.isValid
    }
    
    private func validPalindrome(_arr: [Character], _l: Int, _r: Int) -> (start: Int, end: Int, isValid: Bool) {
        if _arr.count < 2 {
            return (_l, _r, true)
        }

        let arr = _arr
        var l = _l
        var r = _r

        while l < r {
            if arr[l] == arr[r] {
                l += 1
                r -= 1
            } else {
                return (l, r, false)
            }
        }

        return (l, r, true)
    }
}
