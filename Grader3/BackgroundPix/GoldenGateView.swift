//
//  GoldenGateView.swift
//  Grader3
//
//  Created by Imelda Yoon on 12/19/23.
//

import SwiftUI

struct GoldenGateView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.gold, Color.blue
                                   ], startPoint: .zero, endPoint: .trailing)
          //  Color.blue
                .ignoresSafeArea()
          
            VStack {
                Text("My Parents")
                    .font(.title)
                    .padding(.bottom,50)
                Image(.parents)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .padding()
                    .background{
                        Color.gold
                        
                }
                Text("Rufo Villanueva Arcenio & Gloria Bie Arcenio")
                    .font(.title2)
                    .padding(.top,50)
            }
           
        }
      
    }
}

#Preview {
    GoldenGateView()
}
