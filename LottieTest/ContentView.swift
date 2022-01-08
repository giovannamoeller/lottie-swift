//
//  ContentView.swift
//  LottieTest
//
//  Created by Giovanna Moeller on 06/01/22.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      VStack {
        Spacer()
        Text("Happy New Year!")
          .font(.largeTitle)
          .bold()
          .foregroundColor(.white)
        Spacer()
        ZStack {
          LottieView(fileName: "confetti")
          LottieView(fileName: "champagne-animation")
        }.frame(height: 380)
        Spacer()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
