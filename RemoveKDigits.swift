class Solution {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        var k = k
        var stack: [Character] = []
        for char in num {
            while k > 0, let top = stack.last, top > char {
                stack.removeLast()
                k -= 1
            }
            stack.append(char)
        }
        stack.removeLast(k)
        let result = stack.drop(while: { $0 == "0" })
        return result.isEmpty ? "0" : String(result)
    }
}