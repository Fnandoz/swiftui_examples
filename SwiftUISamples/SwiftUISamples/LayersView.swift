//
//  LayersView.swift
//  SwiftUISamples
//
//  Created by Fernando Gomes on 25/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct LayersView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Layers").font(.largeTitle)
            Text("The basics").foregroundColor(.gray)
            Text("With SwiftUI views, you can add layers on top (.overlay) and behind (.background) the view")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .layoutPriority(1)
            
            Image("SF Symbols")
                .opacity(0.7)
                .background(Color.red.opacity(0.3))
                .background(Color.yellow.opacity(0.3))
                .background(Color.blue.opacity(0.3))
                .overlay(Text("SF Symbols"))

        }.font(.title)
    }
}

struct LayersView_Previews: PreviewProvider {
    static var previews: some View {
        LayersView()
    }
}
