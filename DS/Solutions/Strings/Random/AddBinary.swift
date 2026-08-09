extension ViewController {
    
    func addBinary() {
        let result = addBinary("11", "1")
        print(result)
    }
    
    private func addBinary(_ a: String, _ b: String) -> String {
        let arrA = Array(a)
        let arrB = Array(b)
        
        var indexA = arrA.count - 1
        var indexB = arrB.count - 1
        
        var result = ""
        var carry = 0
        
        while indexA >= 0 || indexB >= 0 {
            
            var sum = 0
            
            if indexA >= 0 && indexB >= 0 {
                let charA = arrA[indexA].wholeNumberValue ?? 0
                let charB = arrB[indexB].wholeNumberValue ?? 0
                sum = charA + charB + carry
            } else if indexA >= 0 {
                let charA = arrA[indexA].wholeNumberValue ?? 0
                sum = charA + carry
            } else if indexB >= 0 {
                let charB = arrB[indexB].wholeNumberValue ?? 0
                sum = charB + carry
            }
            
            if sum > 1 {
                carry = 1
                result = String(sum-2) + result
            } else {
                carry = 0
                result = String(sum) + result
            }
            
            indexA -= 1
            indexB -= 1
        }
        
        if carry > 0 {
            return String(carry) + result
        }
        
        return result
    }
}
