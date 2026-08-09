extension ViewController {
    func mutiplyStrings() {
        let result = multiply("9", "9")
        print(result)
    }
    
    private func multiply(_ num1: String, _ num2: String) -> String {
        
        if num1 == "0" || num2 == "0" {
            return "0"
        }
        
        let a = String("Test".sorted())
        
        let n1 = Array(num1)
        let n2 = Array(num2)
        
        var result = Array(repeating: 0, count: n1.count + n2.count)
        
        for i in stride(from: n1.count - 1, through: 0, by: -1) {
            
            let digit1 = Int(n1[i].asciiValue! - Character("0").asciiValue!)
            
            for j in stride(from: n2.count - 1, through: 0, by: -1) {
                
                let digit2 = Int(n2[j].asciiValue! - Character("0").asciiValue!)
                
                let product = digit1 * digit2
                
                let p1 = i + j
                let p2 = i + j + 1
                
                let sum = product + result[p2]
                
                result[p2] = sum % 10
                result[p1] += sum / 10
            }
        }
        
        var answer = ""
        
        var started = false
        
        for digit in result {
            
            if digit != 0 {
                started = true
            }
            
            if started {
                answer.append(Character(UnicodeScalar(UInt8(digit + 48))))
            }
        }
        
        return answer
    }
}
