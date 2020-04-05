//
//  ContentView.swift
//  CustomButton
//
//  Created by Fernando Gomes on 05/04/20.
//  Copyright © 2020 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            SpecialButton(buttonColor: Color.red, buttonTitle: "Function 1").onTapGesture {
                print("Function 1")
            }
            
            Button(action: {
                print("Function 2")
            }, label: {
                SpecialButton(buttonColor: Color.purple, buttonTitle: "Function 2")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
