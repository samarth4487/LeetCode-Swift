class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        var ransomDict = [String: Int]()
        var magazineDict = [String: Int]()
        var answer = false
        
        if (ransomNote == "" && magazine == "") || (ransomNote == "") {
            return true
        }
        
        for char in ransomNote {
            if ransomDict[String(char)] == nil {
                ransomDict[String(char)] = 1
            } else {
                ransomDict[String(char)] = ransomDict[String(char)]! + 1
            }
        }
        
        for char in magazine {
            if magazineDict[String(char)] == nil {
                magazineDict[String(char)] = 1
            } else {
                magazineDict[String(char)] = magazineDict[String(char)]! + 1
            }
        }
        
        for (key, value) in ransomDict {
            if let newValue = magazineDict[key] {
                if value <= newValue {
                    answer = true
                    continue
                } else {
                    answer = false
                    break
                }
            } else {
                answer = false
                break
            }
        }
        
        return answer
    }
}