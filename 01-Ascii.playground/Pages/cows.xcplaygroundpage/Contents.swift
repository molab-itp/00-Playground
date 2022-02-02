
import Foundation

//  https://github.com/sindresorhus/cows
//  https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt

let path = URL(string: "https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt")
let cowsStr = try String(contentsOf: path!, encoding: String.Encoding.utf8)
print("cowsStr.count \(cowsStr.count)")

// https://github.com/sindresorhus/cows/blob/main/index.js
//  module.exports = () => fs.readFileSync(path.join(__dirname, 'cows.txt'), 'utf8')
//    .replace(/\n$/, '').split('\n\n\n');

let cowsSplit = cowsStr.split(separator: "\n", omittingEmptySubsequences: false)
print("cowsSplit.count \(cowsSplit.count)")
for index in 0...20 {
  let it = cowsSplit[index]
  print("\(it) \(it.count)")
}
