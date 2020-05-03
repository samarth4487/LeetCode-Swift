class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.count == 0 {
            return 0
        } else if nums.count == 1 {
            return 1
        }
        
        var index1: Int = 0
        var index2: Int = 0
        
        while index2 < nums.count {
            if nums[index1] == nums[index2] {
                index2 += 1
            } else {
                nums.swapAt(index1 + 1, index2)
                index1 += 1
                index2 += 1
            }
        }
        
        return index1 + 1
    }
}