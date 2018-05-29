/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
import Foundation
/*:
 ## Exercise
 
 Write a function named **shortestDistance** that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 The function header should look like this:
 
 ![example](example1.png "example")
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a new **Line** structure.
 
 Recall that a line is defined by it's *slope* and it's *vertical intercept*. What stored properties would you create for a **Line** structure?
 
 Recall that slope, in turn, is defined by it's *rise* and *run*. Could you create a **Slope** structure? What stored properties might it define?
 
 Recall that the shortest distance from a point to a line is the *perpendicular* distance from that point to the line.
 
 Here is a [complete example showing how to find the shortest distance from a point to a line](http://russellgordon.ca/lcs/shortest-distance-example.pdf), using symbolic algebra.
 
 Your job is to implement a solution in code that carries out the necessary mathematics. The beautiful part of this effort is that, once you've "taught" the computer how to do this correctly, you will never need to do this type of work manually again. 👍🏽😅🎉
 */

// Begin here...
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
    
}
struct Slope {
    var rise : Double = 1.0
    var run : Double = 1.0
}

struct Line {
    var slope : Slope = Slope(rise: 1.0, run: 1.0 )
    var verticalIntercept : Double = 0.0
    
}

func getSlopeOfPerpendicularLine(from givenLine: Line) -> Slope {
    return Slope(rise: givenLine.slope.run, run: givenLine.slope.rise * -1)
}

func getverticalIntercept( from p : Point, onLinewith m : Slope) -> Double {
    let mAsdecimal = m.rise / m.run
    return p.y - mAsdecimal * p.x
}
func getpointOfInterception(between first : Line, and second : Line ) -> Point {
    let verticalInterceptDifference = first.verticalIntercept - second.verticalIntercept
    let slopeDifference = second.slope.rise / second.slope.run - first.slope.rise / first.slope.run
    let x = verticalInterceptDifference / slopeDifference
    let y = first.slope.rise / first.slope.run * x + first.verticalIntercept
    return Point(x: x, y: y)
}
func distance(from: Point, to: Point) -> Double {
    return sqrt( pow(from.x - to.x, 2) + pow(to.y - from.y, 2)  )
    
}
func shortestDistance(from providedPoint: Point, to providedLine : Line ) -> Double {
    let perpendicularSlope = getSlopeOfPerpendicularLine(from: providedLine)
    let perpendicularLineVerticalIntercept = getverticalIntercept(from: providedPoint, onLinewith: perpendicularSlope)
    let newLine = Line(slope: perpendicularSlope, verticalIntercept: perpendicularLineVerticalIntercept)
    let pointOfIntersection = getpointOfInterception(between: providedLine, and: newLine)
    let shortestDistance = distance(from: providedPoint, to: pointOfIntersection)
    return shortestDistance
    
}
var cabinSite = Point(x: 6, y: 1.5)

var slopeOfExistingRoad = Slope(rise: -1, run: 2)
var existingRoad = Line(slope: slopeOfExistingRoad, verticalIntercept: 9.5)

//Final
shortestDistance(from: cabinSite, to: existingRoad)
/*:
 ## Exercise
 
 Write a function named **shortestDistance** that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 The function header should look like this:
 
  ![example](example1.png "example")
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a new **Line** structure.
 
 Recall that a line is defined by it's *slope* and it's *vertical intercept*. What stored properties would you create for a **Line** structure?
 
 Recall that slope, in turn, is defined by it's *rise* and *run*. Could you create a **Slope** structure? What stored properties might it define?
 
 Recall that the shortest distance from a point to a line is the *perpendicular* distance from that point to the line.
 
 Here is a [complete example showing how to find the shortest distance from a point to a line](http://russellgordon.ca/lcs/shortest-distance-example.pdf), using symbolic algebra.
 
 Your job is to implement a solution in code that carries out the necessary mathematics. The beautiful part of this effort is that, once you've "taught" the computer how to do this correctly, you will never need to do this type of work manually again. 👍🏽😅🎉

*/

// Begin here...
import Foundation
import Foundation
/*:
 ## Exercise
 
 Write a function named **shortestDistance** that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 The function header should look like this:
 
 ![example](example1.png "example")
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a new **Line** structure.
 
 Recall that a line is defined by it's *slope* and it's *vertical intercept*. What stored properties would you create for a **Line** structure?
 
 Recall that slope, in turn, is defined by it's *rise* and *run*. Could you create a **Slope** structure? What stored properties might it define?
 
 Recall that the shortest distance from a point to a line is the *perpendicular* distance from that point to the line.
 
 Here is a [complete example showing how to find the shortest distance from a point to a line](http://russellgordon.ca/lcs/shortest-distance-example.pdf), using symbolic algebra.
 
 Your job is to implement a solution in code that carries out the necessary mathematics. The beautiful part of this effort is that, once you've "taught" the computer how to do this correctly, you will never need to do this type of work manually again. 👍🏽😅🎉
 */

// Begin here...
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
    
}
struct Slope {
    var rise : Double = 1.0
    var run : Double = 1.0
}

struct Line {
    var slope : Slope = Slope(rise: 1.0, run: 1.0 )
    var verticalIntercept : Double = 0.0
    
}

func getSlopeOfPerpendicularLine(from givenLine: Line) -> Slope {
    return Slope(rise: givenLine.slope.run, run: givenLine.slope.rise * -1)
}

func getverticalIntercept( from p : Point, onLinewith m : Slope) -> Double {
    let mAsdecimal = m.rise / m.run
    return p.y - mAsdecimal * p.x
}
func getpointOfInterception(between first : Line, and second : Line ) -> Point {
    let verticalInterceptDifference = first.verticalIntercept - second.verticalIntercept
    let slopeDifference = second.slope.rise / second.slope.run - first.slope.rise / first.slope.run
    let x = verticalInterceptDifference / slopeDifference
    let y = first.slope.rise / first.slope.run * x + first.verticalIntercept
    return Point(x: x, y: y)
}
func distance(from: Point, to: Point) -> Double {
    return sqrt( pow(from.x - to.x, 2) + pow(to.y - from.y, 2)  )
    
}
func shortestDistance(from providedPoint: Point, to providedLine : Line ) -> Double {
    let perpendicularSlope = getSlopeOfPerpendicularLine(from: providedLine)
    let perpendicularLineVerticalIntercept = getverticalIntercept(from: providedPoint, onLinewith: perpendicularSlope)
    let newLine = Line(slope: perpendicularSlope, verticalIntercept: perpendicularLineVerticalIntercept)
    let pointOfIntersection = getpointOfInterception(between: providedLine, and: newLine)
    let shortestDistance = distance(from: providedPoint, to: pointOfIntersection)
    return shortestDistance
    
}
var cabinSite = Point(x: 6, y: 1.5)

var slopeOfExistingRoad = Slope(rise: -1, run: 2)
var existingRoad = Line(slope: slopeOfExistingRoad, verticalIntercept: 9.5)

//Final
shortestDistance(from: cabinSite, to: existingRoad)
/*:
 ## Exercise
 
 Write a function named **shortestDistance** that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 The function header should look like this:
 
 ![example](example1.png "example")
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a new **Line** structure.
 
 Recall that a line is defined by it's *slope* and it's *vertical intercept*. What stored properties would you create for a **Line** structure?
 
 Recall that slope, in turn, is defined by it's *rise* and *run*. Could you create a **Slope** structure? What stored properties might it define?
 
 Recall that the shortest distance from a point to a line is the *perpendicular* distance from that point to the line.
 
 Here is a [complete example showing how to find the shortest distance from a point to a line](http://russellgordon.ca/lcs/shortest-distance-example.pdf), using symbolic algebra.
 
 Your job is to implement a solution in code that carries out the necessary mathematics. The beautiful part of this effort is that, once you've "taught" the computer how to do this correctly, you will never need to do this type of work manually again. 👍🏽😅🎉
 */

// Begin here...
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
    
}
struct Slope {
    var rise : Double = 1.0
    var run : Double = 1.0
}

struct Line {
    var slope : Slope = Slope(rise: 1.0, run: 1.0 )
    var verticalIntercept : Double = 0.0
    
}

func getSlopeOfPerpendicularLine(from givenLine: Line) -> Slope {
    return Slope(rise: givenLine.slope.run, run: givenLine.slope.rise * -1)
}

func getverticalIntercept( from p : Point, onLinewith m : Slope) -> Double {
    let mAsdecimal = m.rise / m.run
    return p.y - mAsdecimal * p.x
}
func getpointOfInterception(between first : Line, and second : Line ) -> Point {
    let verticalInterceptDifference = first.verticalIntercept - second.verticalIntercept
    let slopeDifference = second.slope.rise / second.slope.run - first.slope.rise / first.slope.run
    let x = verticalInterceptDifference / slopeDifference
    let y = first.slope.rise / first.slope.run * x + first.verticalIntercept
    return Point(x: x, y: y)
}
func distance(from: Point, to: Point) -> Double {
    return sqrt( pow(from.x - to.x, 2) + pow(to.y - from.y, 2)  )
    
}
func shortestDistance(from providedPoint: Point, to providedLine : Line ) -> Double {
    let perpendicularSlope = getSlopeOfPerpendicularLine(from: providedLine)
    let perpendicularLineVerticalIntercept = getverticalIntercept(from: providedPoint, onLinewith: perpendicularSlope)
    let newLine = Line(slope: perpendicularSlope, verticalIntercept: perpendicularLineVerticalIntercept)
    let pointOfIntersection = getpointOfInterception(between: providedLine, and: newLine)
    let shortestDistance = distance(from: providedPoint, to: pointOfIntersection)
    return shortestDistance
    
}
var cabinSite = Point(x: 6, y: 1.5)

var slopeOfExistingRoad = Slope(rise: -1, run: 2)
var existingRoad = Line(slope: slopeOfExistingRoad, verticalIntercept: 9.5)

//Final
shortestDistance(from: cabinSite, to: existingRoad)
