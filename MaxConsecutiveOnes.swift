class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count: Int = 0
        var maxCount: Int = 0
        
        for i in 0..<nums.count {
            if nums[i] == 1 {
                count += 1
            } else {
                count = 0
            }
            if maxCount < count {
                maxCount = count
            }
        }
        
        return maxCount
    }
}