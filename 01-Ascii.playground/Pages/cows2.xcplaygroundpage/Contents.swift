
import Foundation

//  https://github.com/sindresorhus/cows
//  https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt

let path = URL(string: "https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt")
let cowsStr = try String(contentsOf: path!, encoding: .utf8)
print("cowsStr.count \(cowsStr.count)")

// https://github.com/sindresorhus/cows/blob/main/index.js
//  module.exports = () => fs.readFileSync(path.join(__dirname, 'cows.txt'), 'utf8')
//    .replace(/\n$/, '').split('\n\n\n');

let cowsSplit = cowsStr.split(separator: "\n", omittingEmptySubsequences: false)
print("cowsSplit.count \(cowsSplit.count)")
for index in 0...10 {
  let it = cowsSplit[index]
  print("\(it) \(it.count) \(index)")
}

for (index, value) in cowsSplit.enumerated() {
  if value.count == 0 && index < 50 {
    print("index \(index)")
  }
}

let n = 50 // cowsSplit.count
for index in 0..<n {
  let value = cowsSplit[index]
  if value.count == 0 {
    print("index \(index)")
  }
}
