class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var digits = digits
        var index = digits.count - 1
        
        while index >= 0 {
            if digits[index] < 9 {
                digits[index] = digits[index] + 1
                return digits
            }
            digits[index] = 0
            index -= 1
        }
        
        digits.insert(1, at: 0)
        return digits
    }
}