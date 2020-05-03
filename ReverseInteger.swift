class Solution {
    func reverse(_ x: Int) -> Int {
        
        var x = x
        var output: Int = 0
        
        while (x != 0) {
            let remainder = x % 10
            x /= 10
            output = (output * 10) + remainder 
        }
        
        if output > Int32.max || output < Int32.min {
            return 0
        } else {
            return output
        }
    }
}