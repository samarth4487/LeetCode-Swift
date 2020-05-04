class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var maxNum: Int = 0
        var maxNumIndex: Int = 0
        for i in 0..<nums.count {
            if maxNum < nums[i] {
                maxNum = nums[i]
                maxNumIndex = i
            }
        }
        for i in 0..<nums.count {
            if maxNumIndex == i { continue }
            if 2 * nums[i] > maxNum {
                return -1
            }
        }
        return maxNumIndex
    }
}