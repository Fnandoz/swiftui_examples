//
//  ContentView.swift
//  ShakeAnimation
//
//  Created by Fernando Gomes on 12/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var attempts: Int = 0

    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.pink)
                .frame(width: 200, height: 100)
                .modifier(Shake(animatableData: CGFloat(attempts)))
            Spacer()
            Button(action: {
                withAnimation(.default) {
                    self.attempts += 1
                }

            }, label: { Text("Shake") })
        }
    }
}

struct Shake: GeometryEffect {
    var amount: CGFloat = 10
    var shakesPerUnit = 3
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX:
            amount * sin(animatableData * .pi * CGFloat(shakesPerUnit)),
            y: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
