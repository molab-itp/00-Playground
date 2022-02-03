
import Foundation

//  https://github.com/sindresorhus/cows
//  https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt

let path = URL(string: "https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt")
let cowsStr = try String(contentsOf: path!, encoding: .utf8)
print("cowsStr.count \(cowsStr.count)")

let ncowsStr = cowsStr as NSString;
let comp = ncowsStr.components(separatedBy: "\n\n\n").sorted { $0.count < $1.count }
print("comp.count", comp.count)

let counts = comp.map { $0.count }
print("counts", counts)

let n = min(comp.count, 10)
for index in 0..<n {
  print("index", index)
  print(comp[index])
}
