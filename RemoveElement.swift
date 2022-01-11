// Naive Solution
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        let count = nums.count
        var itemsRemoved = 0
        var i = 0

        while i < nums.count {
            if nums[i] == val {
                nums.remove(at: i)
                itemsRemoved += 1
            } else {
                i += 1
            }
        }

        return count - itemsRemoved
    }
}

// Better Solution
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var index1: Int = 0
        var index2: Int = nums.count - 1
        
        while index1 <= index2 {
            if nums[index1] == val {
                nums[index1] = nums[index2]
                index2 -= 1
            } else {
                index1 += 1
            }
        }
        
        return index1
    }
}
