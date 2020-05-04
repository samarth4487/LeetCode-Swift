class Solution {
    func reverseString(_ s: inout [Character]) {
        var leftIndex: Int = 0
        var rightIndex = s.count - 1
        var temp: Character = "a" 
        while leftIndex < rightIndex {
            temp = s[leftIndex]
            s[leftIndex] = s[rightIndex]
            s[rightIndex] = temp
            leftIndex += 1
            rightIndex -= 1
        }
    }
}