//  File           : main.swift
//  Description    : This is the main source code for the Software Engineer Coding
//                   Exercise. This application calculates distance between
//                   two points on a two-dimensional plot.
//                   Unit Tests are developed and included in this project.
//
//   Author        : Roman Tuzhilkin
//   Last Modified : 03.12.2021

import Foundation

//Variable that holds graph with two points
var plot: Graph = Graph()

//Variables to pass coordinates to the graph class
var a_x:Int
var a_y:Int
var b_x:Int
var b_y:Int

print("Enter coordinate X for point A: ", terminator:"")
a_x = Int(readLine()!)!
print("Enter coordinate Y for point A: ", terminator:"")
a_y = Int(readLine()!)!
print("Enter coordinate X for point B: ", terminator:"")
b_x = Int(readLine()!)!
print("Enter coordinate Y for point B: ", terminator:"")
b_y = Int(readLine()!)!

//Call to pass the values to the graph class
plot.fillPoints(forA: a_x, forA: a_y, forB: b_x, forB: b_y)

//Call to calculate distance between two points
print("The distance between A(\(plot.pointA.x),\(plot.pointA.y)) and B(\(plot.pointB.x),\(plot.pointB.y)) is: \(plot.getDistance())")
