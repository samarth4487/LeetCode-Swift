class Solution {
    func findComplement(_ num: Int) -> Int {
        
        let binaryNum = String(num, radix: 2)
        var complementBinaryString = ""
        
        for char in binaryNum {
            if char == "0" {
                complementBinaryString += "1"
            } else {
                complementBinaryString += "0"
            }
        }
        
        if let complementNum = Int(complementBinaryString, radix: 2) {
            return complementNum
        } else {
            return 0
        }
    }
}