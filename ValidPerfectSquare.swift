class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        if num == 1 {
            return true
        }
        for i in 0...(num/2) {
            if (i * i == num) {
                return true
            }
        }
        return false
    }
}