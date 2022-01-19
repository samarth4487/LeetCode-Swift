// Looping from left to right
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

// Looping from right to left (Better solution)
class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        guard arr.count > 1 else {
            return [-1]
        }

        var array = Array(repeating: -1, count: arr.count)
        var index = array.count - 1
        var max = -1
        
        while index > 0 {
            if arr[index] > max {
                max = arr[index]
            }
            
            array[index - 1] = max
            index -= 1
        }

        return array
    }
}
