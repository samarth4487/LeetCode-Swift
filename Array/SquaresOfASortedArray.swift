class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var arr = nums
        var index = nums.count - 1
        
        while index >= 0 {
            if abs(nums[left]) > abs(nums[right]) {
                arr[index] = abs(nums[left] * nums[left])
                left += 1
            } else {
                arr[index] = abs(nums[right] * nums[right])
                right -= 1
            }
            
            index -= 1
        }
        
        return arr
    }
}
