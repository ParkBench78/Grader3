//
//  RockPaperScissors.swift
//  Grader3
//
//  Created by Imelda Yoon on 12/11/23.
//

import SwiftUI

struct RockPaperScissors: View {
    @State private var player2 = "?"
    @State private var player1 = "?"
    var body: some View {
        VStack {
            PlayerView(choice: $player2)
                .rotationEffect(.degrees(180))
           
            Spacer()
            Text(player2)
                .font(.system(size: 200))
              
        Spacer()
            Text(player1)
                .font(.system(size: 200))
                .rotationEffect(.degrees(180))
            Spacer()
            PlayerView(choice: $player1)
        }
        .frame(minWidth: 400)
    }
}

struct PlayerView: View {
    @Binding var choice: String
    var body: some View {
        HStack {
            Button(action: {
                choice = "🪨"
            }, label: {
                Text("Rock!")
            })
            Button(action: {
                choice = "📄"
            }, label: {
                Text("Paper!")
            })
            Button(action: {
                choice = "✂️"
            }, label: {
                Text("Scissors!")
            })
        }
        .buttonStyle(.borderedProminent)
        .font(.title2)
    }
}
#Preview {
    RockPaperScissors()
}
