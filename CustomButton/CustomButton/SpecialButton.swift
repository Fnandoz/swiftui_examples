//
//  SpecialButton.swift
//  CustomButton
//
//  Created by Fernando Gomes on 05/04/20.
//  Copyright © 2020 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct SpecialButton: View {
    var buttonColor = Color.green
    var buttonTitle = "My button"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 150, height: 55)
                .foregroundColor(Color.gray)
            
            Text(buttonTitle)
                .bold()
                .foregroundColor(.black)
            
            LeftCorner()
                .trim(from: 0.41, to: 0.59)
                .fill(buttonColor)
                .frame(width: 150, height: 55)
        }
    }
}

struct LeftCorner: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 5, height: 5))
        return path
    }
}

struct SpecialButton_Previews: PreviewProvider {
    static var previews: some View {
        SpecialButton()
    }
}
