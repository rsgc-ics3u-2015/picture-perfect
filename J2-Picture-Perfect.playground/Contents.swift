// Russell Gordon
// J2 - Picture Perfect

// Notes

// a bit of testing
import Darwin

var a : Float

a = 100
sqrt(a)         // perfect square

a = 15
sqrt(a)         // not a perfect square
floor(sqrt(a))  // low dimension
floor(sqrt(a)) + 2  // high dimension
a / floor(sqrt(a))

a = 195
sqrt(a)
floor(sqrt(a))  // low dimension
floor(sqrt(a)) + 2  // high dimension
a / floor(sqrt(a))

a = 6
sqrt(a)
floor(sqrt(a))  // low dimension
floor(sqrt(a)) + 1  // high dimension
a / floor(sqrt(a))

a = 1
sqrt(a)

a = 2
sqrt(a)
floor(sqrt(a))  // low dimension
a / floor(sqrt(a))

a = 3
sqrt(a)
floor(sqrt(a))  // low dimension
a / floor(sqrt(a))

a = 5
sqrt(a)
floor(sqrt(a))  // low dimension
a / floor(sqrt(a))

a = 6
sqrt(a)
floor(sqrt(a))  // low dimension
a / floor(sqrt(a))

a = 7
sqrt(a)
floor(sqrt(a))  // low dimension
a / floor(sqrt(a))

a = 8
sqrt(a)
floor(sqrt(a))  // low dimension
a / floor(sqrt(a))

a = 9
sqrt(a)
floor(sqrt(a))  // low dimension
a / floor(sqrt(a))

a = 65000
sqrt(a)
floor(sqrt(a))  // low dimension
a / floor(sqrt(a)) // hmm, this doesn't work for the high dimension, doesn't divide evenly into picture count
floor(sqrt(a)) - 4
a / (floor(sqrt(a)) - 4) // there we go, that divides evenly...



// Basically the minimum perimeter is achieved with a square configuration, or as close to this as possible.
//
// If the number of pictures is a perfect square, the dimensions are the square root.
//
// If not a perfect square, round down from the square root, then keep subtracting one from the first dimension until it divides
// evenly into the picture count.

// Input values
let pictureCount : Float = 65000

// Get square root
let squareRoot : Float = sqrt(pictureCount)

// Handle cases
if pictureCount % squareRoot == 0 {    // Perfect square
    
    // Get dimension
    let dimension = Int(squareRoot)
    
    // Get perimeter
    let perimeter = dimension * 4
    
    // Report result
    print("Minimum perimeter is \(perimeter) with dimensions \(dimension) x \(dimension)")
    
} else {
    
    // Get dimensions
    var firstDimension = floor(squareRoot)
    
    // Does the first dimension divide evenly into the picture count?
    // When this is not true, keep reducing the dimension until it does
    // divide evenly.  Then we can find the second dimension.
    while pictureCount % firstDimension != 0 {
        
        // Reset dimensions
        firstDimension -= 1
        
    }
    
    // Now we must have a firstDimension that divides evenly into the second dimension, so get the second dimension
    var secondDimension = pictureCount / firstDimension
    
    // Get perimeter
    let perimeter = firstDimension * 2 + secondDimension * 2
    
    // Report results
    print("Minimum perimeter is \(Int(perimeter)) with dimensions \(Int(firstDimension)) x \(Int(secondDimension))")
    
}
