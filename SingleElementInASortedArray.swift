class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        
        var left: Int = 0
        var right: Int = nums.count - 1
        let middle: Int = nums.count / 2
        
        if right == 0 {
            return nums[0]
        }
        
        if nums[middle] != nums[middle - 1] && nums[middle] != nums[middle + 1] {
            return nums[middle]
        }
        
        while left < nums.count/2 {
            if nums[left] != nums[left + 1] { 
                return nums[left] 
            }
            
            if nums[right] != nums[right - 1] { 
                return nums[right] 
            }
            
            left += 2
            right -= 2
        }
        
        return 0
    }
}