//
//  LottievIEW.swift
//  LottieTest
//
//  Created by Giovanna Moeller on 06/01/22.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
  
  var fileName: String
  
  func makeUIView(context: Context) -> some UIView {
    let view = UIView(frame: .zero)
    let animationView = AnimationView()
    let animation = Animation.named(fileName)
    animationView.animation = animation
    animationView.contentMode = .scaleAspectFit
    animationView.play()
    animationView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(animationView)
    NSLayoutConstraint.activate([
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
    ])
    return view
  }
  
  func updateUIView(_ uiView: UIViewType, context: Context) {
    
  }
}

struct LottieView_Previews: PreviewProvider {
  static var previews: some View {
    LottieView(fileName: "confetti")
  }
}
