//
//  ContentView.swift
//  BindableObjectExample
//
//  Created by Fernando Gomes on 01/11/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var settings = UserSetting()
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(settings.score)")
                .font(.largeTitle)
            
            Button("Increment score") {
                self.settings.score += 1
            }
            
            Spacer()
            ScoreView(score: $settings.score)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
