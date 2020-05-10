class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        var numDict = [Int: Int]()
        var num2Dict = [Int: Int]()
        
        if trust.count == 0 {
            return 1
        }
        
        for t in trust {
            let zeroElement = t[0]
            let oneElement = t[1]
            if numDict[zeroElement] == nil {
                numDict[zeroElement] = 0
            }
            numDict[zeroElement] = numDict[zeroElement]! + 1
            
            if num2Dict[oneElement] == nil {
                num2Dict[oneElement] = 0
            }
            num2Dict[oneElement] = num2Dict[oneElement]! + 1
        }
        
        for i in 1...N {
            if numDict[i] == nil && num2Dict[i] == N - 1 {
                return i 
            }
        }
        
        return -1
    }
}