class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        
        var answer = false
        let initialCoordinate = coordinates[0]
        var xDifference = Double(abs(coordinates[1][0] - coordinates[0][0]))
        var yDifference = Double(abs(coordinates[1][1] - coordinates[0][1]))
        var slope: Double = yDifference / xDifference
        
        for i in 2..<coordinates.count {
            let coordinate = coordinates[i]
            let xDifference = Double(abs(initialCoordinate[0] - coordinate[0]))
            let yDifference = Double(abs(initialCoordinate[1] - coordinate[1]))
            let newSlope: Double = yDifference / xDifference
            if slope == newSlope {
                answer = true
            } else {
                return false
            }
        }
        
        return answer
    }
}