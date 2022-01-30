
// Javascript to Swift

// --
// to display values in javascript
// let x = 'some value'
// console.log('x = '+ x);

// in Swift, use string interpolation
let x = "some value"
print("x = \(x)")

// --
// to take subscript of a string

// substring method from javascript documentation
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/substring
// substring(indexStart)
// substring(indexStart, indexEnd)
//
// Displays 'illa' the last 4 characters of string 'Mozilla'
//  let anyString = 'Mozilla'
//  let anyString4 = anyString.substring(anyString.length - 4)
//  console.log(anyString4)

// Apple documentation for swift string subscript method
// https://developer.apple.com/documentation/swift/string/2943910-subscript
// !!@ Warning: Documentation is showing subscript with Arrays not Strings

// To use substring with String we need to use string index method
// every different from the javascript equivalent
// extract the last 4 characters a string "Mozilla" -> "illa"
let str = "Mozilla"
let start = str.index(str.startIndex, offsetBy: str.count - 4)
let end = str.endIndex
let str2 = str[start..<end]
print(str2)

// To extract the 3rd to 5th characters of string "Mozilla" -> "zil"
// and bracket notation
let start3 = str.index(str.startIndex, offsetBy: 2)
let end3 = str.index(str.startIndex, offsetBy: 4)
let str3 = str[start3...end3]
print(str3)

