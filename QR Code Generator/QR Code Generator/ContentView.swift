//
//  ContentView.swift
//  QR Code Generator
//
//  Created by Fernando Gomes on 31/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    var body: some View {
        VStack {
            TextField("Enter the data", text: $inputText).textFieldStyle(RoundedBorderTextFieldStyle())
            
            if inputText != "" {
                Image(uiImage: UIImage(data: returnData(str: self.inputText))!)
                    .resizable()
                    .frame(width: 150, height: 150)
            }
        }.padding()
    }
    
    func returnData(str: String)->Data {
        let filter = CIFilter(name: "CIQRCodeGenerator")
        let data = str.data(using: .ascii, allowLossyConversion: false)
        filter?.setValue(data, forKey: "inputMessage")
        let image = filter?.outputImage
        let uiimage = UIImage(ciImage: image!)
        return uiimage.pngData()!
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
