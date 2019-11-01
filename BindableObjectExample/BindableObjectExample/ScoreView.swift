//
//  ScoreView.swift
//  BindableObjectExample
//
//  Created by Fernando Gomes on 01/11/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ScoreView: View {
    @Binding var score: Int
    
    var body: some View {
        VStack {
            Text("\(self.score)")
                .font(.largeTitle)
            
            Button("Increment score") {
                self.score += 1
            }.padding()
                .background(Color.orange)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: .constant(0))
    }
}
