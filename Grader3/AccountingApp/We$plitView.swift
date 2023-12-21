//
//  We$plit.swift
//  Grader3
//
//  Created by Imelda Yoon on 12/20/23.
//

import SwiftUI

struct We$plitView: View {
    @State private var checkAmount = 0.0
    @State private var selectedTipIndex = 0
    @State private var numberOfPeople = 0
    
    var totalAmount : Double {
        checkAmount + checkAmount * tipPercentages[selectedTipIndex]
    }
    
    let tipPercentages: [Double] = [0.05, 0.10, 0.15, 0.20]
    
    var body: some View {
        NavigationStack {
            Form{
                Section("Check Amount") {
                    TextField ("Amount", value: $checkAmount, format: .currency(code: "USD"))
                }
                Section("Tip Percentage") {
                    Picker("Tip%", selection: $selectedTipIndex) {
                        ForEach(0..<tipPercentages.count, id: \.self) { index in
                            Text("\(tipPercentages[index] * 100, specifier: "%.0f")")
                        }
                    }
                    .pickerStyle(.segmented)
                    Text("Tip = \(checkAmount * tipPercentages[selectedTipIndex], format: .currency(code: "USD"))")
                }
                Section("Total") {
                    Text("\(totalAmount, format: .currency(code: "USD"))")
                }
                Section("Split") {
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(1 ..< 100) {
                            Text("\($0)")
                        }
                    }
                    pickerStyle(.navigationLink)
                    Text("Amount per person: \(totalAmount / Double(numberOfPeople + 1), format: .currency(code: "USD"))")
                }
            }
            .navigationTitle("We$plit")
        }
        }
 
    }


#Preview {
    We$plitView()
}
