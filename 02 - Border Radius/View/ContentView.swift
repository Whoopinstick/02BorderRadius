//
//  ContentView.swift
//  02 - Border Radius
//
//  Created by Kevin Paul on 7/16/20.
//  Copyright © 2020 Whoopinstick. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var radiusString = "20.0"
    @State private var borderRed = ""
    @State private var borderGreen = ""
    @State private var borderBlue = ""
    
    var radius: CGFloat {
        let temp = Double(radiusString)
        return CGFloat(temp ?? 10.0)
    }
    
    var borderColor: Color {
        let red = Double(borderRed) ?? 0
        let green = Double(borderGreen) ?? 0
        let blue = Double(borderBlue) ?? 0
        
        return Color(red: red / 255, green: green / 255, blue: blue / 255)
    }
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: radius)
                .stroke(lineWidth: 5.0)
                .foregroundColor(borderColor)
                .padding()
            
            VStack(alignment: .center) {
                Text("Enter the corner radius:")
                TextField("Enter the corner radius", text: $radiusString)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                
                Text("Enter the border color in RGB:")
                
                HStack {
                    TextField("Red", text: $borderRed)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                    
                    TextField("Blue", text: $borderGreen)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    
                    TextField("Green", text: $borderBlue)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
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
