//
//  ContentView.swift
//  SpeedMeter
//
//  Created by Fernando Gomes on 22/05/20.
//  Copyright © 2020 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    let colors = [Color("Color"), Color("Color1")]
    @State var progress: CGFloat = 0
    
    var body: some View {
        VStack {
            Meter(progress: $progress)
            HStack(spacing: 25) {
                 Button(action: {
                    withAnimation(Animation.default.speed(0.55)) {
                        if self.progress < 100 {
                            self.progress += 10
                        }
                    }
                 }) {
                    Text("Update")
                    .padding(.vertical)
                    .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                 }.background(Capsule().stroke(LinearGradient(gradient: .init(colors: self.colors), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
                
                Button(action: {
                    withAnimation(Animation.default.speed(0.55)) {
                        self.progress = 0
                    }
                 }) {
                    Text("Reset")
                    .padding(.vertical, 10)
                    .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                 }.background(Capsule().stroke(LinearGradient(gradient: .init(colors: self.colors), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
            }
            .padding(.top, 55)
        }
    }
}

struct Meter: View {
    let colors = [Color("Color"), Color("Color1")]
    @Binding var progress: CGFloat
    
    var body: some View {
        ZStack {
            ZStack {
                Circle()
                    .trim(from: 0, to: 0.5)
                    .stroke(Color.black.opacity(0.1), lineWidth: 55)
                    .frame(width: 280, height: 280)
                
                Circle()
                    .trim(from: 0, to: self.setProgress())
                    .stroke(AngularGradient(gradient: .init(colors: colors), center: .center, angle: .init(degrees: 180)), lineWidth: 55)
                    .frame(width: 280, height: 280)
            }
            .rotationEffect(.init(degrees: 180))
            
            ZStack(alignment: .bottom) {
                self.colors[1]
                .frame(width: 2, height: 95)
                
                Circle()
                    .fill(self.colors[1])
                .frame(width: 15, height: 15)
            }
            .offset(y: -35)
            .rotationEffect(.init(degrees: -90))
            .rotationEffect(.init(degrees: self.setArrow()))
        }
        .padding(.bottom, -140)
    }
    
    func setProgress() -> CGFloat{
        let temp = self.progress / 2
        return temp * 0.01
    }
    
    func setArrow() -> Double   {
        let temp = self.progress / 100
        return Double(temp * 180)
    }
}
