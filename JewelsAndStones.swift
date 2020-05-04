class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        
        var count: Int = 0
        
        for stone in S {
            if J.contains(String(stone)) {
                count += 1
            }
        }
        
        return count
    }
}