class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxOnes = 0
        var tempCount = 0
        
        nums.forEach { num in
            if num == 1 {
                tempCount += 1
            }
                      
            maxOnes = max(maxOnes, tempCount)
                      
            if num == 0 {
                tempCount = 0
            }
        }
        
        return maxOnes
    }
}
