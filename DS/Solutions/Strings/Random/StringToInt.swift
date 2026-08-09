import Foundation

extension ViewController {
    
    func convertStringToInt() {
        let result = myAtoi("   -042")
        print(result)
    }
    
    func myAtoi(_ s: String) -> Int {
        var isStarted = false
        var num = 0
        var sign = 0
        
        DispatchQueue.main.async {
            print(Thread.isMainThread ? "Main" : "Other")
        }
        
        DispatchQueue.global(qos: .background).async {
            print(Thread.isMainThread ? "Main" : "Global")
        }

        for char in s {
            if char == " " {
                if isStarted {
                    break
                } else {
                    continue
                }
            }
            
            if char == "-" {
                if sign == 0 {
                    isStarted = true
                    sign = -1
                    continue
                } else {
                    break
                }
            }
            
            if char == "+" {
                if sign == 0 {
                    isStarted = true
                    sign = 1
                    continue
                } else {
                    break
                }
            }
            
            if char.isNumber {
                isStarted = true
                sign = sign == 0 ? 1 : sign
                let intVal = char.wholeNumberValue ?? 0
                let val = num == 0 ? intVal * sign : num * 10 + ( intVal * sign )
                if val < Int32.min {
                    return Int(Int32.min)
                } else if val > Int32.max {
                    return Int(Int32.max)
                } else {
                    num = val
                    continue
                }
            } else {
                break
            }
        }
        
        return num
    }
}
