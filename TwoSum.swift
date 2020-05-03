class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dict: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            dict[value] = index
        }
        
        for (index, value) in nums.enumerated() {
            let differenceValue = target - value
            if dict[differenceValue] != nil && dict[differenceValue]! != index {
                return [index, dict[differenceValue]!]
            }
        }
        
        return [Int]()
    }
}