//
//  ContentView.swift
//  ListView
//
//  Created by Fernando Gomes on 22/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var tutors: [Tutor] = []
    var body: some View {
        NavigationView {
            List(tutors) { tutor in
                TutorCell(tutor: tutor)
           }
        }.navigationBarTitle(Text("Tutors"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}

struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        NavigationLink(destination: Text(tutor.name)) {
            Image(tutor.imageName).cornerRadius(40)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}
