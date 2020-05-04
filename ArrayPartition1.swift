class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort()
        var sum: Int = 0
        var index: Int = 0
        
        while index < nums.count {
            sum += nums[index]
            index += 2
        }
        
        return sum
    }
}