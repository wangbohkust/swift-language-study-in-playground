
import Cocoa
struct multiply{
    let multiplier:Int
    //subscript is used as short-cut to data
    subscript(index:Int) -> Int{
        return multiplier*index
    }
}

let test = multiply(multiplier: 3);
// 100 times
test[100]

//random function from specified range
func random(#range:Range<UInt32>) -> UInt32{
    return range.startIndex + arc4random_uniform(range.endIndex-range.startIndex+1)
}

struct Level{
    var grid = Array<Array<UInt32>>()
    mutating func makegrid(){
        for column in 0...27{
            var newRow = Array<UInt32>()
            for row in 0...52 {
                newRow.append(random(range:1...32))
            }
            self.grid.append(newRow)
        }
    }
    //define subscript
    subscript(row:Int,column:Int) -> UInt32{
        return grid[row][column]
    }
    init(){
        makegrid()
    }
}
var level=Level()
level.grid
level[2,5]