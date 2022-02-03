
import Foundation

// https://asciiart.website/index.php?art=animals/aardvarks

let path = Bundle.main.path(forResource: "aardvark", ofType: "txt")
let str = try String(contentsOfFile: path!, encoding: .utf8)
print(str)

func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: "txt")
  let str = try? String(contentsOfFile: path!, encoding: .utf8)
  return str!
}

print(load("bat"))

print(load("cat"))

print(load("elephant"))
