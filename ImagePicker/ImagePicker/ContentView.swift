//
//  ContentView.swift
//  ImagePicker
//
//  Created by Fernando Gomes on 06/04/20.
//  Copyright © 2020 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showingImagePicker = false
    @State var image: Image? = nil
    var body: some View {
        VStack {
            if image == nil {
                Image(systemName: "person.fill")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)
                    .foregroundColor(.gray)
                    .overlay(
                        Circle()
                            .stroke(Color.gray, lineWidth: 4)
                )
            } else {
                image?.resizable()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)
                    .foregroundColor(.gray)
                    .overlay(
                        Circle()
                            .stroke(Color.gray, lineWidth: 4)
                )
            }
            
            
            Button("Select image") {
                self.showingImagePicker.toggle()
            }.sheet(isPresented: $showingImagePicker, content: {
                ImagePicker.shared.view
            }).onReceive(ImagePicker.shared.$image) { image in
                self.image = image
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
