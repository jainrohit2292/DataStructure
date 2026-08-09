extension ViewController {
    func groupAnagrams() {
        let result = groupAnagrams(["eat","tea","tan","ate","nat","bat"])
        print(result)
    }
    
    private func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var dict: [String: [String]] = [:]
        
        for str in strs {
            let string = String(str.sorted())
            if var strArr = dict[string] {
                strArr.append(str)
                dict[string] = strArr
            } else {
                dict[string] = [str]
            }
        }
        
        return Array(dict.values)
    }
}
