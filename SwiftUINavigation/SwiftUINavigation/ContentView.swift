//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Fernando Gomes on 13/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive: Bool = false
    @State private var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: DetailView(), isActive: self.$isActive) {
                    Text("")
                }
                
                NavigationLink(destination: DetailView(), tag: 1, selection: self.$selection) {
                    Text("")
                }
                
                NavigationLink(destination: Text("TESTE"), tag: 2, selection: self.$selection) {
                    Text("")
                }
                
                Button("Go to detail view by isActive") {
                    self.isActive = true
                }
                
                Button("Go to detail view by selection") {
                    self.selection = 1
                }
                
                Button("Go to TextView") {
                    self.selection = 2
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
