class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: nums.count)
        var left = 0
        var right = nums.count - 1
        var pointer = nums.count - 1

        while left <= right {
            if abs(nums[left]) < abs(nums[right]) {
                result[pointer] = nums[right] * nums[right]
                right -= 1
            } else {
                result[pointer] = nums[left] * nums[left]
                left += 1
            }
            pointer -= 1
        }

        return result
    }
}
