//
//  ShapesView.swift
//  SwiftUISamples
//
//  Created by Fernando Gomes on 25/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Shapes").font(.largeTitle)
            
            Text("Short introduction").foregroundColor(.gray)
            
            Text("I'll make shapes, give them color and put them behind other views just for decoration.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .layoutPriority(3)
            
            Text("This text has a rounded rectangle behind it")
                .foregroundColor(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue))
                .padding()
                .layoutPriority(2)
            
            Text("But sometimes I'll use color and a corner radius:")
            
            Text("This text has a color with a corner radius")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .layoutPriority(1)
            
        }.font(.title)
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
