//
//  BasicTemplate.swift
//  SwiftUISamples
//
//  Created by Fernando Gomes on 21/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct Title: View {
    var body: some View {
        Text("Title")
            .font(.largeTitle)
    }
}

struct Subtitle: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            Text("Subtitle")
                .font(.title)
                .foregroundColor(.gray)
        }
    }
}

struct Description1: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            Text("Subtitle")
                .font(.title)
                .foregroundColor(.gray)
            Text("Short description of what I am demonstrating goes here")
                .font(.title)
                .foregroundColor(.white)
                .background(Color.blue)
        }
    }
}

struct Description2: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            Text("Subtitle")
                .font(.title)
                .foregroundColor(.gray)
            Text("Short description of what I am demonstrating goes here")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .background(Color.blue)
        }
    }
}

struct Description3: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            Text("Subtitle")
                .font(.title)
                .foregroundColor(.gray)
            Text("Short description of what I am demonstrating goes here")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .layoutPriority(1)
        }
    }
}

struct BasicTemplate_Previews: PreviewProvider {
    static var previews: some View {
        Description3()
    }
}
