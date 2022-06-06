class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var evenDigits = 0
        
        for num in nums {
            var number = num
            var currentCount = 0
            while number > 0 {
                currentCount += 1
                number /= 10
            }
            
            if currentCount % 2 == 0 {
                evenDigits += 1
            }
        }
        
        return evenDigits
    }
}
