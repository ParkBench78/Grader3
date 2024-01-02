//
//  ConversionFtoC .swift
//  Grader3
//
//  Created by Imelda Yoon on 12/25/23.
//

import SwiftUI

struct ConversionFtoC_: View {
    @State private var fahrenheit = 0.0
    @State private var celcius = 0.0
    @State private var answer = 0.0
    var body: some View {
        ZStack {
//            Color.blue.opacity(0.7)
//                .ignoresSafeArea()
            LinearGradient(colors: [Color.yellow, Color.red], startPoint: .topLeading, endPoint: .bottomTrailing) .ignoresSafeArea()
            VStack {
                Text("Conversion Tool")
                HStack{
                    TextField("Fahrenheit:", value: $fahrenheit, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 100)
                    Text("ºF")
                }
                
                Text("Answer: \(answer, specifier: "%.1f")")
                Button(action: {
                    answer = (fahrenheit - 32) * (5/9)
                }, label: {
                    Text("Fahrenheit to Celcius")
                })
            }.font(.title)
        }
        
    }
}

#Preview {
    ConversionFtoC_()
}
