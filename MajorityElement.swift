class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let majorityCount = nums.count/2
        var dict = [Int: Int]()
        for i in 0..<nums.count {
            if dict[nums[i]] == nil {
                dict[nums[i]] = 0
            }
            dict[nums[i]] = dict[nums[i]]! + 1
        }
        for (key, value) in dict {
            if value > majorityCount {
                return key
            }
        }
        return 0
    }
}