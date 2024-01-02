//
//  heightconversion.swift
//  Grader3
//
//  Created by Imelda Yoon on 12/25/23.
//

import SwiftUI

struct ConversionTool: View {
    @State private var feet = 0.0
    @State private var inches = 0.0
    @State private var centimeters = 0.0
    @State private var pounds = 0.0
    @State private var inches2 = 0.0
    @State private var buttonColor = Color.blue
    @State private var index = 0
    
    let colors = [Color.blue, Color.indigo, Color.yellow, Color.teal, Color.black, Color.red]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.red, Color.yellow, Color.purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                .ignoresSafeArea()
            VStack {
                Text("Feet-Inches to Total Inches & More!!!")
                HStack {
                    TextField("Feet", value:  $feet, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 60)
                    Text("ft")
                        .frame(width: 60)
                }
                
                HStack {
                    TextField("Inches", value: $inches, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 60)
                    Text("in")
                        .frame(width: 60)
                }
                
                
                Text("Total inches: \(feet * 12 + inches, specifier: "%.1f")")
                    .background(Color.yellow.opacity(0.9))
                    .border(Color.red)
                    .padding(.bottom, 5)
                Text("Total centimeters: \((feet * 12 + inches) * 2.54, specifier: "%.1f")")
                    .background(Color.yellow.opacity(0.9))
                    .border(Color.red)
                    .padding(.bottom, 15)
                HStack {
                    TextField("Centimeters", value: $centimeters, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 60)
                    Text("cm")
                        .frame(width: 60)
                }
                
                Text("Centimeters to inches: \(centimeters/2.54, specifier: "%.1f")")
                    .background(Color.indigo.opacity(0.5))
                    .border(Color.yellow
                    )
                    .padding(.bottom, 15)
                HStack {
                    TextField("Inches2", value: $inches2, format: .number)
                        . textFieldStyle(.roundedBorder)
                        .frame(width: 60)
                    Text("in")
                        .frame(width: 60)
                }
                Text("Inches to centimeters: \(inches2 * 2.54, specifier: "%.1f")")
                    .background(Color.red.opacity(0.6))
                    .border(Color.teal)
                    .padding(.bottom, 15)
                Button(action: {
                    feet = 0
                    inches = 0
                    centimeters = 0
                    inches2 = 0
                }
                       , label: {
                    Text("RESET")
                }).buttonStyle(.borderedProminent)
                    .tint(colors[index])
                Picker("Button Color", selection: $index) {
                    Text("blue").tag(0)
                    Text("indigo").tag(1)
                    Text("yellow").tag(2)
                    Text("teal").tag(3)
                    Text("black").tag(4)
                    Text("red").tag(5)
                }
                .pickerStyle(.segmented)
                
            }
            .font(.title)
        }
    }
}

#Preview {
    ConversionTool()
}
