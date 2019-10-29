//
//  ContentView.swift
//  Fetching Music
//
//  Created by Fernando Gomes on 26/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkingManager =  NetworkingManager()
    
    var body: some View {
        NavigationView {
            List(networkingManager.songs) { song in
                Text(song.name)
            }
        }.navigationBarTitle("New music")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
