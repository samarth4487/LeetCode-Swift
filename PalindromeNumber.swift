class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        if x < 0 {
            return false
        }
        
        var y = x
        var output: Int = 0
        
        while y != 0 {
            let remainder = y % 10
            y /= 10
            output = output * 10 + remainder
        }
        
        return x == output ? true : false
    }
}