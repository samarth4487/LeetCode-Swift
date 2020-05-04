class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {

        var sum: Int = 0
        for i in 0..<nums.count {
            sum += nums[i]
        }

        var leftSum: Int = 0        
        for i in 0..<nums.count {
            if leftSum == sum - leftSum - nums[i] { 
                return i
            } else { 
                leftSum += nums[i] 
            }
        }

        return -1
    }
}