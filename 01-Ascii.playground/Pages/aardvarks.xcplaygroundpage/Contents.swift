
import Foundation

// https://asciiart.website/index.php?art=animals/aardvarks

let path = Bundle.main.path(forResource: "avacodo", ofType: "txt") // file path for file "data.txt"
let avacodo = try String(contentsOfFile: path!, encoding: String.Encoding.utf8)
print(avacodo)

func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: "txt") // file path for file "data.txt"
  let str = try? String(contentsOfFile: path!, encoding: String.Encoding.utf8)
  return str!
}

print(load("bat"))

print(load("cat"))
