//
//  RefactoringView.swift
//  SwiftUISamples
//
//  Created by Fernando Gomes on 24/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct RefactoringView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Refactoring")
                .font(.largeTitle)
            Text("Reusing modifiers")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can put common modifiers on the parent views to be applied to all the child views.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .layoutPriority(1)
        }
        .font(.title)
    }
}

struct SymbolsIntro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Refactoring")
                .font(.largeTitle)
            Text("Using SF Symbols")
                .font(.title)
                .foregroundColor(.gray)
            Text("You will see I use icons or symbols to add clarity to what I'm demonstrating. These come from Apple's new symbol font library which you can browse using an app called 'SF Symbols'.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .layoutPriority(1)
            
            Image(systemName: "hand.thumbsup.fill")
            
            Image("SF Symbols")
        }
        .font(.title)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct RefactoringView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsIntro()
    }
}
