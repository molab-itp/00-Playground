//: [Previous](@previous)  [Next](@next)

// split a string into an array of words

// javascript uses split method
//  const str = 'The quick brown fox jumps over the lazy dog.';
//  const words = str.split(' ');
//  console.log(words[3]);
//  // expected output: "fox"

// swift is similar, requires argument label separator:
let strSplit = "The quick brown fox jumps over the lazy dog."
let words = strSplit.split(separator: " ")
print("words[3] \(words[3])")
// expected output: "fox"

//: [Previous](@previous)  [Next](@next)
