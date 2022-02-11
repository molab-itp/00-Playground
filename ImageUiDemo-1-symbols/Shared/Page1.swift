//
//  Layout with VStack and HStack

import SwiftUI

struct Page1: View {
  var body: some View {
    VStack() {
      HStack {
        Image(systemName: "circle.fill")
          .resizable()
          .frame(width:100, height: 100)
        Image(systemName: "circle")
          .resizable()
          .frame(width:100, height: 100)
        Image(systemName: "rectangle")
          .resizable()
          .frame(width:100, height: 100)
      }
      HStack {
        Image(systemName: "triangle")
          .resizable()
          .frame(width:100, height: 100)
        Image(systemName: "hexagon")
          .resizable()
          .frame(width:100, height: 100)
        Image(systemName: "pentagon")
          .resizable()
          .frame(width:100, height: 100)
      }
      // Spacer()
    }
  }
}

struct Page1_Previews: PreviewProvider {
  static var previews: some View {
    Page1()
  }
}


