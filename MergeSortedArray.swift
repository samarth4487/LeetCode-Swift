class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var mChecked = 0
        var nChecked = 0
        var mIndex = 0
        var nIndex = 0

        while(mChecked < m && nChecked < n) {
            if(nums1[mIndex] > nums2[nIndex]) {
                nums1.insert(nums2[nIndex], at: mIndex)
                nums1.removeLast()
                mIndex += 1
                nChecked += 1
                nIndex += 1
            } else {
                mChecked += 1
                mIndex += 1
            }
        }

        while(nChecked < n) {
            nums1.insert(nums2[nIndex], at: mIndex)
            nums1.removeLast()
            mIndex += 1
            nChecked += 1
            nIndex += 1
        }
    }
}
