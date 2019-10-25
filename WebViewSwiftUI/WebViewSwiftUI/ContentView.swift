//
//  ContentView.swift
//  WebViewSwiftUI
//
//  Created by Fernando Gomes on 25/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WebView(url: "https://www.google.com.br")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
