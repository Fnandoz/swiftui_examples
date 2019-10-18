//
//  ContentView.swift
//  StackViewsExample
//
//  Created by Fernando Gomes on 18/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Stack Views example")
            HStack {
                Rectangle()
                    .frame(width: 200, height: 200)
                Rectangle()
                    .frame(width: 200, height: 200)
            }
            Rectangle()
                .frame(height: 5)
                .padding(.leading, 8)
                .padding(.trailing, 8)
            HStack {
                VStack {
                    Rectangle().frame(width: 100, height: 100)
                    Rectangle().frame(width: 100, height: 100)
                }
                VStack {
                    Rectangle().frame(width: 100, height: 100)
                    Rectangle().frame(width: 100, height: 100)
                }
                VStack {
                    Rectangle().frame(width: 100, height: 100)
                    HStack {
                        VStack {
                            Rectangle().frame(width: 50, height: 50)
                            Rectangle().frame(width: 50, height: 50)
                        }
                        VStack {
                            Rectangle().frame(width: 50, height: 50)
                            HStack {
                                VStack {
                                    Rectangle().frame(width: 20, height: 20)
                                    Rectangle().frame(width: 20, height: 20)
                                }
                                VStack {
                                    Rectangle().frame(width: 20, height: 20)
                                    Rectangle().frame(width: 20, height: 20)
                                }
                            }
                        }
                    }
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
