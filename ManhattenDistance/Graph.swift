//  File           : Graph.swift
//  Description    : This is the file that holds the Graph class.
//                   Graph class has two variables that store two points.
//                   pointA and pointB are defined as a Struct and contain
//                   two coordinates of a point.
//
//   Author        : Roman Tuzhilkin
//   Last Modified : 03.12.2021

import Foundation

class Graph {
    
    //Variables to store the coordinates of two points
    var pointA: Coordinates
    var pointB: Coordinates
    
    init() {
        pointA = Coordinates()
        pointB = Coordinates()
    }
    
    // Function     : fillPoints
    // Description  : sets the values of coordinates
    //
    // Inputs       : x1 Int, y1 Int are the values for pointA
    //                x2 Int, y2 Int are the values for pointB
    // Outputs      : none
    func fillPoints(forA x1:Int, forA y1:Int, forB x2:Int, forB y2:Int){
        pointA = Coordinates(x: x1, y: y1)
        pointB = Coordinates(x: x2, y: y2)
    }
    
    // Function     : getDistance
    // Description  : calculates the distance between two points on the grid
    //
    // Inputs       : none
    // Outputs      : distance
    func getDistance() -> Int {
        
        var distance: Int = -1
        
        distance = abs(pointB.x - pointA.x) + abs(pointB.y - pointA.y)
        
        return distance
    }
}

struct Coordinates {
    var x: Int
    var y: Int
    
    init() {
        x = 0
        y = 0
    }
    
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
    }
}
