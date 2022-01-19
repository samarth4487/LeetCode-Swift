class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        guard arr.count > 1 else {
            return [-1]
        }

        var array = arr

        for i in 0 ..< array.count - 1 {
            var greatestElement: Int = array[i + 1]
            for j in i+1 ..< array.count {
                if greatestElement < array[j] {
                    greatestElement = array[j]
                }
            }
            array[i] = greatestElement
        }

        array[array.count - 1] = -1

        return array
    }
}
