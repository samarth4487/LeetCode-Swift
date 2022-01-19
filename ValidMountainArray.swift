class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        let count = arr.count
        guard count >= 3 else {
            return false
        }

        var index = 0

        while index + 1 < count && arr[index] < arr[index + 1] {
            index += 1
        }

        if index == 0 || index == count - 1 {
            return false
        }

        while index + 1 < count && arr[index] > arr[index + 1] {
            index += 1
        }

        return index == count - 1
    }
}
