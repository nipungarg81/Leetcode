import Cocoa

class DiagonalTraversal {
    func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
        guard matrix.count != 0 else {
            return []
        }
        
        var goDown = false
        
        var res : [Int] = [Int]()
        
        for c in 0 ..< matrix[0].count{
            res.append(contentsOf: getDiagonal(matrix, startRow: 0, startCol: c, reversed: !goDown))
            goDown = !goDown
        }
        
        goDown = (matrix[0].count - 1) % 2 == 0
        
        for r in 1 ..< matrix.count{
            res.append(contentsOf: getDiagonal(matrix, startRow: r, startCol: matrix[0].count-1, reversed: !goDown))
            goDown = !goDown
        }
        
        return res
    }
    
    func getDiagonal(_ matrix: [[Int]],  startRow: Int, startCol: Int, reversed : Bool ) -> [Int] {
        var diagonal : [Int] = [Int]()
        var row = startRow
        var col = startCol
        
        while row < matrix.count && col >= 0{
            diagonal.append(matrix[row][col])
            row += 1
            col -= 1
        }
        
        
        return reversed ? diagonal.reversed() : diagonal
    }
}

print(DiagonalTraversal().findDiagonalOrder([[1,2,3],[4,5,6]]))
