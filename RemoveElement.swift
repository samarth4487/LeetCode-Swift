class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var index1: Int = 0
        var index2: Int = nums.count - 1
        
        while index1 <= index2 {
            if nums[index1] == val {
                nums.swapAt(index1, index2)
                index2 -= 1
            } else {
                index1 += 1
            }
        }
        
        return index1
    }
}