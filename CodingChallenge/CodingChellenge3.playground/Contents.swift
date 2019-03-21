import UIKit

//https://www.enekoalonso.com/projects/99-swift-problems/

//let numbers = [10, 20, 30, 40, 50, 60]
//if let i = numbers.firstIndex(of: 40) {
//    print(i)
//    print(numbers.suffix(from: 1))
//}

class List<T> {
    var value: T
    var nextItem: List<T>?
    
    convenience init?(_ values: T...) {
        self.init(Array(values))
    }
    
    init?(_ values: [T]) {
        guard let first = values.first else {
            return nil
        }
        value = first
        nextItem = List(Array(values.suffix(from: 1)))
    }
}

extension List {
    func last() -> T? {
        var lastItem: List<T>? = self
        
         while lastItem?.nextItem != nil {
            lastItem = lastItem?.nextItem
        }
        return lastItem?.value
    }
}

let list = List([1, 1, 2, 3, 5, 8, 10])
list?.last()
