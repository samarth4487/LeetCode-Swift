class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var evenCount = 0
        
        for num in nums {
            var charCount = 0
            var number = num
            while number > 0 {
                charCount += 1
                number /= 10
            }
            if charCount % 2 == 0 {
                evenCount += 1
            }
        }
        
        return evenCount
    }
}
