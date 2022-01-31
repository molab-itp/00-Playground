//: [Previous](@previous)  [Next](@next)

// js objects can be Dictionary in swift
// but watch out for the strong type requirements!

/*
 -- differences
 
 js objects
 {x: 0, y: 1.0, color: "red", list: [1, 2, 3]}
 
 swift Dictionary
 ["x": 0, "y": 1.0, "color": "red", "list": [1, 2, 3]]
 
 */

var dict:[String : Any] = ["x": 0, "y": 1.0, "color": "red", "list": [1, 2, 3]]
print("dict \(dict)")

// strong/strict type vs. weak/dynamic/free type

var point1 = ["x": 1, "y": 100]
print("point \(point1)")

point1["x"] = 10
print("point \(point1)")

// ERROR! type of x inferred to be Int
// point1["x"] = 9.0

// Ok since dict is type [String : Any]
dict["x"] = 9.0
print("dict \(dict)")

//: [Previous](@previous)  [Next](@next)
