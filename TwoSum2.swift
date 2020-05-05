class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var leftIndex: Int = 0
        var rightIndex: Int = numbers.count - 1
        
        while leftIndex < rightIndex {
            let sum = numbers[leftIndex] + numbers[rightIndex] 
            if sum == target {
                return [leftIndex + 1, rightIndex + 1]
            } else if sum < target {
                leftIndex += 1
            } else {
                rightIndex -= 1
            }
        }
        
        return [Int]()
    }
}