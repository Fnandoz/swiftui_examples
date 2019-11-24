//
//  ContentView.swift
//  GesturesExample
//
//  Created by Fernando Gomes on 24/11/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var gestureRealized = ""
    
    var body: some View {
        VStack {
            Text("Gesture \(gestureRealized)")
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100, alignment: .center)
                .gesture(TapGesture().onEnded({ _ in
                    self.gestureRealized = "Tap"
                }))
            .gesture(LongPressGesture(minimumDuration: 1).onEnded({_ in
                self.gestureRealized = "Long press"
            }))
            .gesture(DragGesture(minimumDistance: 20).onEnded({_ in
                self.gestureRealized = "Drag"
            }))
            .gesture(MagnificationGesture(minimumScaleDelta: 2).onEnded({_ in
                self.gestureRealized = "Magnification"
            }))
            .gesture(RotationGesture().onEnded({_ in
                self.gestureRealized = "Rotation"
            }))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
