import UIKit

enum LevelProgress{
    case Completed(Int)
    case AttemptedButIncomplete(Double, NSDate)
    case Unattempted
}

enum FirstYearOfDecade: Int {
    case Seventies = 1970
    case Eighties  = 1980
    case Nineties  = 1990
}

let nn = FirstYearOfDecade.Seventies
print(nn.rawValue)


print(NSDate())

var level1 = LevelProgress.Completed(3)
level1 = .AttemptedButIncomplete(10.0, NSDate())



switch level1 {
case .Completed(let stars):
    print(stars)
case .AttemptedButIncomplete(let percentageCompleted, let date):
    print("\(percentageCompleted) \(date)")
    break
default:
    break
}



