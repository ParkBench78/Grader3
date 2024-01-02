//
//  TextFieldPractice.swift
//  Grader3
//
//  Created by Imelda Yoon on 12/20/23.
//

import SwiftUI

struct TextFieldPractice: View {
    @State private var text1 = ""
    @State private var text2 = ""
    @State private var value1 = 0.0
    @State private var value2 = 0.0
    @State private var answer = 0.00
    @State private var colorChoice = "red"
    
    let choices: [String] = ["red", "blue", "green"]
    var body: some View {
        
        Form {
            Text("\(value1, specifier: "%.1f")\(text1) is🥹 \(text2)\(value2, specifier: "%.1f")")
            TextField("Text1", text: $text1)
                .textFieldStyle(.roundedBorder)
            TextField("Text2", text: $text2)
                .textFieldStyle(.roundedBorder)
            TextField("\(text1)", value: $value1, format: .number
            )
            TextField("Number2", value: $value2, format: .number)
            Text("Answer: \(answer, specifier: "%.2f")")
            Button(action: {
                answer = (value1 - 32) * (5/9)
            }, label: {
                Text("Convert Fahrenheit to Celsius")
            })
            Button(action: {
                answer = value1 - value2
            }, label: {
                Text("Subtract")
            })
            Button(action: {
                answer = value1 * value2
            }, label: {
                Text("Multiply")
            })
            Button(action: {
                answer = value1 / value2
            }, label: {
                Text("Divide")
            })
            Picker("Favorite Color: \(colorChoice)", selection: $colorChoice) {
                ForEach(choices, id: \.self){ color in
                    Text(color).tag(color)
                    
                }
            }
        }
    }
}

#Preview {
    TextFieldPractice()
}
