class Solution {
    func romanToInt(_ s: String) -> Int {
        let values: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        var answer: Int = 0
        
        for (index, value) in s.enumerated() {
            answer += values[value]!
            
            if index > 0 {
                let startIndex = s.startIndex
                let previousIndex = s.index(startIndex, offsetBy: index - 1)
                let previousChar = s[previousIndex]
                
                switch value {
                case "V":
                    if previousChar == "I" {
                        answer -= 2
                    }
                case "X":
                    if previousChar == "I" {
                        answer -= 2
                    }
                case "L":
                    if previousChar == "X" {
                        answer -= 20
                    }
                case "C":
                    if previousChar == "X" {
                        answer -= 20
                    }
                case "D":
                    if previousChar == "C" {
                        answer -= 200
                    }
                case "M":
                    if previousChar == "C" {
                        answer -= 200
                    }
                default:
                break
            }   
            }
        }
        
        return answer
    }
}