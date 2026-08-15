/*
 
 904. Fruit Into Baskets
 
 You are visiting a farm that has a single row of fruit trees arranged from left to right. The trees are represented by an integer array fruits where fruits[i] is the type of fruit the ith tree produces.

 You want to collect as much fruit as possible. However, the owner has some strict rules that you must follow:

 You only have two baskets, and each basket can only hold a single type of fruit. There is no limit on the amount of fruit each basket can hold.
 Starting from any tree of your choice, you must pick exactly one fruit from every tree (including the start tree) while moving to the right. The picked fruits must fit in one of your baskets.
 Once you reach a tree with fruit that cannot fit in your baskets, you must stop.
 Given the integer array fruits, return the maximum number of fruits you can pick.
 
 Example 1:

 Input: fruits = [1,2,1]
 Output: 3
 Explanation: We can pick from all 3 trees.
 Example 2:

 Input: fruits = [0,1,2,2]
 Output: 3
 Explanation: We can pick from trees [1,2,2].
 If we had started at the first tree, we would only pick from trees [0,1].
 Example 3:

 Input: fruits = [1,2,3,2,2]
 Output: 4
 Explanation: We can pick from trees [2,3,2,2].
 If we had started at the first tree, we would only pick from trees [1,2].
  

 Constraints:

 1 <= fruits.length <= 105
 0 <= fruits[i] < fruits.length
 
*/

extension ArraySlidingWindow {
    func totalFruit() {
        let result = totalFruit([3,3,3,1,2,1,1,2,3,3,4])
        debugPrint(result)
    }
    
    private func totalFruit(_ fruits: [Int]) -> Int {
        
        if fruits.count <= 2 {
            return fruits.count
        }
        
        var maxCount = 0
        var count = 0
        var fruitsDict: [Int: Int] = [:]
        
        var l = 0
        
        for r in 0..<fruits.count {
            let fruit = fruits[r]
            fruitsDict[fruit, default: 0] += 1
            count += 1
            
            while fruitsDict.count > 2 {
                if fruitsDict[fruits[l], default: 0] <= 1 {
                    fruitsDict.removeValue(forKey: fruits[l])
                } else {
                    fruitsDict[fruits[l], default: 0] -= 1
                }
                l += 1
                count -= 1
            }
            
            maxCount = max(maxCount, count)
        }
        
        return maxCount
    }
}
