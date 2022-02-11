//
// Picker ForEach

import SwiftUI
import UIKit

struct Page8: View {
  @State var len = 100.0
  @State var fillFlag = true
  @State var selectedImage = "circle"
  var body: some View {
    VStack() {
      Image(systemName: selectedImage  + (fillFlag ? ".fill" : "") )
        .resizable()
        .frame(width: len, height: len)
      Toggle(isOn: $fillFlag) {
        Text("Fill")
      }
      Slider(value: $len, in: 100.0...400.0)
      Text("len \(len)")
      Picker("Image Name", selection: $selectedImage) {
        ForEach(0 ..< imageArray.count) { index in
          let item = imageArray[index]
          Text(item).tag(item)
        }
      }
    }
  }
}

struct Page8_Previews: PreviewProvider {
  static var previews: some View {
    Page8()
  }
}


