class Solution {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        var res = [Character](), k = k
        let size = num.count - k
        
        for char in num {
            while k > 0 && res.count > 0 && charToInt(res.last!) > charToInt(char) {
                res.removeLast()
                k -= 1
            }
            res.append(char)
        }
        
        res = Array(res[0..<size])
        for char in res {
            if char != "0" {
                break
            } else {
                res.removeFirst()
            }
        }

        return res.isEmpty ? "0" : String(res)
    }
    
    private func charToInt(_ c: Character) -> Int {
        return Int(String(c))!
    }
}