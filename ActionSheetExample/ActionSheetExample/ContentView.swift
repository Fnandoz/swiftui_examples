//
//  ContentView.swift
//  ActionSheetExample
//
//  Created by Fernando Gomes on 06/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showActionSheet: Bool = false
    var titles: [String] = ["One", "Two", "Three", "Four"]
    var buttonsArray: NSMutableArray = NSMutableArray()
    
    init() {
        loadArray()
    }
    
    var body: some View {
        Button("Action Sheet") {
            self.showActionSheet = true
        }.actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Action"), message: Text("Select an option"), buttons: self.buttonsArray as! [ActionSheet.Button])
        }
    }
    
    func loadArray() {
        for i in 0 ..< self.titles.count {
            let button: ActionSheet.Button = .default(Text(self.titles[i]), action: {
                print("Button \(self.titles[i])")
            })
            
            self.buttonsArray[i] = button
        }
        self.buttonsArray.add(ActionSheet.Button.cancel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
