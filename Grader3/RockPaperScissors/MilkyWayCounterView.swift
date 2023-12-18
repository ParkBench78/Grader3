//
//  PracticeBindingView.swift
//  Grader3
//
//  Created by Imelda Yoon on 12/17/23.
//

import SwiftUI

struct ResetButtonView: View {
    @Binding var count: Int
    
    var body: some View {
        Button(action: {
            count = 0
        }, label: {
            Text("RESET")
        })
        .tint(.blue)
        .buttonStyle(.borderedProminent)
    }
}

struct MilkyWayCounterView: View {
    @AppStorage("Count") private var count = 0
    var body: some View {
        
        ZStack {
            Color.yellow
            
                .opacity(0.7)
            LinearGradient(colors: [Color.red, Color.blue, Color.green
                                   ], startPoint: .zero, endPoint: .trailing)
            .ignoresSafeArea()
            Image(.milkyway)
            
                .resizable()
                .offset(x: -60, y: 0)
                .opacity(0.8)
                .blur(radius: 1.0)
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                Text("\(count)")
                    .offset(y: 60)
                    .font(.system(size: 200))
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 10, x: 10.0, y: 10.0)
                    .opacity(0.7)
                    .padding(.bottom, 300)
                HStack {
                    Button(action: {
                        count += 1
                    }, label: {
                        Text("Increase")
                    })
                    .tint(.green)
                    .buttonStyle(.borderedProminent)
                    
                    ResetButtonView(count: $count)
                        .padding(.horizontal, 25)
                    
                    Button(action: {
                        count -= 1
                    }, label: {
                        Text("Decrease")
                    })
                    .tint(.red)
                    .buttonStyle(.borderedProminent)
                    
                }
                .shadow(color: .black, radius: 10, x: 10.0, y: 10.0)
            }
        }
    }
}

#Preview {
    MilkyWayCounterView()
}
