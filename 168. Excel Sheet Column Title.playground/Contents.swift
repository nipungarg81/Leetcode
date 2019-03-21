import UIKit

func convertToTitle(_ n:Int) -> String {
    var temp : String = String()
    var m: Int  = n
    
    while(m > 0) {
        let num:Int = (m-1)%26 + 65
        let str:Character = Character(UnicodeScalar(num)!)
        temp = String(str) + temp
        m = (m - 1)/26
    }
    return temp
}

print(convertToTitle(100000))
