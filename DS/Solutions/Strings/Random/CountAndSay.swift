extension ViewController {
    
    func countAndSay() {
        let result = countAndSay(4)
        print(result)
    }
    
    func countAndSay(_ n: Int) -> String {
        if n == 1 {
            return "1"
        }
        
        var count = 1
        var result = "1"
        
        while count < n {
            var tempResult = ""
            var currentNum = result.first!
            var currentNumCount = 0
            
            for char in result {
                if char == currentNum {
                    currentNumCount += 1
                } else {
                    tempResult.append("\(currentNumCount)")
                    tempResult.append(currentNum)
                    currentNum = char
                    currentNumCount = 1
                }
            }
            
            tempResult.append("\(currentNumCount)")
            tempResult.append(currentNum)
            result = tempResult
            count += 1
        }
        
        return result
    }
}
