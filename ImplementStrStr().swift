class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        if needle == "" {
            return 0
        }
        
        var haystack = Array(haystack)
        var needle = Array(needle)
        var index: Int = 0
        var firstIndex: Int = -1
        var matched = false
        
        while index <= haystack.count - needle.count {
            for i in 0..<needle.count {
                if needle[i] == haystack[index + i] {
                    matched = true
                } else {
                    matched = false
                    break
                }
            }
            
            if matched == true {
                firstIndex = index
                break
            }
            index += 1
        }
        
        return firstIndex
    }
}