//
//  TutorDetailView.swift
//  ListView
//
//  Created by Fernando Gomes on 22/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct TutorDetailView: View {
    let tutor: Tutor
    var body: some View {
        VStack {
            Image(tutor.imageName)
            .clipShape(Circle())
                .overlay(Circle().stroke(Color.orange, lineWidth: 4)
            )
            .shadow(radius: 10)
            Text(tutor.name)
                .font(.title)
            Text(tutor.headline)
                .font(.subheadline)
            Text(tutor.bio)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(50)
        }.padding()
    }
}

struct TutorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetailView(tutor: testData[0])
    }
}
