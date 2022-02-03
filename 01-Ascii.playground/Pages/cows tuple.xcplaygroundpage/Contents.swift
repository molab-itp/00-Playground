
import Foundation

//  https://github.com/sindresorhus/cows
//  https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt

let path = URL(string: "https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt")
let cowsStr = try String(contentsOf: path!, encoding: .utf8)
print("cowsStr.count \(cowsStr.count)")

let ncowsStr = cowsStr as NSString;
let comp = ncowsStr.components(separatedBy: "\n\n\n")
print("comp.count", comp.count)

for (index, value) in comp.enumerated() {
  if index < 5 {
    print("for index", index)
    print(value)
  }
}

//let counts = comp.enumerated().map { $0 }
//let counts = comp.enumerated()
let tuples = Array(comp.enumerated())
//print("tuples", tuples)
print("tuples[9]")
print(tuples[9])

let sorted = tuples.sorted { $0.element.count < $1.element.count }

let n = min(sorted.count, 10)
for index in 0..<n {
  let tup = sorted[index]
  print("sorted index", index, "offset", tup.offset)
  print(tup.element)
}
