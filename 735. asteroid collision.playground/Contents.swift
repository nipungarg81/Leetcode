import UIKit

class AsteroidCollision {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var positives = [Int]()
        var negatives = [Int]()
        
        positives = asteroids.filter {$0 > 0}
        negatives = asteroids.filter {$0 < 0}
        
        
        
        return positives + negatives
    }
}

AsteroidCollision().asteroidCollision([1,1,3,-1,-1])
