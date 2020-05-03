class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.count == 0 || strs[0] == "" {
            return ""
        }
        
        var pre = strs[0]
        
        for i in 1..<strs.count {
            while !strs[i].hasPrefix(pre) {
                pre.removeLast()
                if pre == "" {
                    return ""
                }
            }
        }
        
        return pre
    }
}