class Solution {
    func isValid(_ s: String) -> Bool {
        
        var stack: [Character] = []
        
        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else {
                if let last = stack.last {
                    if char == ")" {
                        if last == "(" {
                            stack.removeLast()
                        } else {
                            return false
                        }
                    } else if char == "}" {
                        if last == "{" {
                            stack.removeLast()
                        } else {
                            return false
                        }
                    } else {
                        if last == "[" {
                            stack.removeLast()
                        } else {
                            return false
                        }
                    }
                } else {
                    return false
                }
            }
        }
        
        return stack.count == 0 ? true : false
    }
}