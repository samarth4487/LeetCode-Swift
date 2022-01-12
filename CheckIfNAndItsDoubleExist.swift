class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var dict = [Int: Int]()

        for number in arr {
            if let _ = dict[number * 2] {
                return true
            } else if number % 2 == 0, let _ = dict[number/2] {
                return true
            } else {
                dict[number] = 0
            }
        }

        return false
    }
}
