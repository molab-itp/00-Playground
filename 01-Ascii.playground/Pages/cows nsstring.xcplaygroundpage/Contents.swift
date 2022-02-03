
import Foundation

//  https://github.com/sindresorhus/cows
//  https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt

let path = URL(string: "https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt")
let cowsStr = try String(contentsOf: path!, encoding: .utf8)
print("cowsStr.count \(cowsStr.count)")

// https://github.com/sindresorhus/cows/blob/main/index.js
//  module.exports = () => fs.readFileSync(path.join(__dirname, 'cows.txt'), 'utf8')
//    .replace(/\n$/, '').split('\n\n\n');

let ncowsStr = cowsStr as NSString;
let comp = ncowsStr.components(separatedBy: "\n\n\n")
print("comp.count", comp.count)

print(comp[426])

// Trailing closure syntax

let counts = comp.map { $0.count }
print("counts", counts)

// https://developer.apple.com/documentation/swift/sequence/3018365-filter
let shortie = comp.filter { $0.count < 100 }
print("shortie.count", shortie.count)

let n = min(shortie.count, 10)
//for index in 0..<n {
//  print("index", index)
//  print(shortie[index])
//}

// https://developer.apple.com/documentation/swift/array/1688499-sort

let sorted = comp.sorted { $0.count < $1.count }
for index in 0..<n {
  print("index", index)
  print(sorted[index])
}
