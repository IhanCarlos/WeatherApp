//
//  Blur.swift
//  Weather
//
//  Created by ihan carlos on 20/10/22.
//

import SwiftUI

class UIBackDropView: UIView {
    override class var layerClass: AnyClass {
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

struct Backdrop: UIViewRepresentable {
    func makeUIView(context: Context) -> UIBackDropView {
        UIBackDropView()
    }
    func updateUIView(_ uiView: UIBackDropView, context: Context) { }
    
}

struct Blur: View {
    
    var radius: CGFloat = 3
    var opaque: Bool = false
    var body: some View {
      Backdrop()
            .blur(radius: radius, opaque: opaque)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
    }
}
