//
//  StylingBootCampView.swift
//  Grader3
//
//  Created by Imelda Yoon on 12/11/23.
//

import SwiftUI

struct StylingBootCampView: View {
    var body: some View {
        ZStack {
            Color.orange.opacity(0.6).ignoresSafeArea()
            VStack {
                Text("Text(\"Coding is cool!\")")
                    .font(.system(size: 60))
                    .bold()
                    .italic()
                    .padding(.horizontal)
                    .background{
                        Color.teal
                    }
                    .padding(.bottom, 5)
                HStack {
                    Text("Clickity, click, click...")
//                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//                        .padding()
//                        .background {
//                            Color.accentColor
//                        }
//                        .padding()
//                        .background {
//                            Color.red
//                        }
//                        .padding(.horizontal)
//                        .background{
//                            Color.green
//                        }
                    Text("click!")
                        .underline()
//                     .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                }
                .padding()
                .background {
                    Color.red
                                    }
            }
             
        }
    }
}

#Preview {
    StylingBootCampView()
}
