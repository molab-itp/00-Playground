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

let dict:[String : Any] = ["x": 0, "y": 1.0, "color": "red", "list": [1, 2, 3]]
print("dict \(dict)")

// strong/strict type vs. weak/dynamic/free type

//: [Previous](@previous)  [Next](@next)
