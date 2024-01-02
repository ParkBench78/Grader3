//
//  Overlays1.swift
//  Grader3
//
//  Created by Imelda Yoon on 12/29/23.
//

import SwiftUI

struct Overlays1: View {
    @State private var isShowingAlert = false
    @State private var year = 2023
    var body: some View {
        ZStack {
            
            Image(.happyFace)
                .resizable()
                .offset(x: -48, y: 0)
                .opacity(0.8)
                .blur(radius: 1.0)
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
               
                Text("HAPPY🥳NEW🎉YEAR!!!")
                    .foregroundStyle(Color.red)
                    .bold()
                    .font(.largeTitle)
                    .padding(.top, 10)
                    .background {
                        Color.green.opacity(0.6)
                    }
                Spacer()
                Button(action: {
                    isShowingAlert = true
                    year = 2023
                }, label: {
                    Capsule()
                        .foregroundStyle(Color.red)
                        .frame(width: 100, height: 70)
                        
                        .overlay{
                            Text("RESET ME!")
                                .foregroundStyle(Color.white)
                                .fontWeight(.black)
                               
                        }
                }
                )
                .alert("TADA!!!", isPresented: $isShowingAlert){}
                .offset(x: 0, y: -90)
                .buttonStyle(.plain)
                .tint(Color.red)
                .padding(.top, 190)
                Spacer()
                Text("\(String(year))")
                    .monospacedDigit()
                    .font(.system(size: 100))
                    .bold()
                    .foregroundStyle(Color.red)
                    .padding(.horizontal, 10)
                    .padding(.vertical, -15)
                    .onTapGesture {
                        year += 1
                    }
                    .background {
                        Color.green.opacity(0.6).cornerRadius(20)
                    }
                    
            }
     
        }

    }
}

#Preview {
    Overlays1()
}
