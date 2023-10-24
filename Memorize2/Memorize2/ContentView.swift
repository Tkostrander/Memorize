//
//  ContentView.swift
//  Memorize2
//
//  Created by Thomas Ostrander on 10/23/23.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🎃","💀","👺","🕸️","🐮","🐷","🐻"]
    
    @State var cardCount: Int = 4

    var body: some View {
        VStack {
            HStack {
                ForEach(0..<cardCount, id: \.self) { index in
                    CardView(content: emojis[index])
                }
            }
            .foregroundColor(.orange)
            
            HStack {
                Button("Add Card") {
                     cardCount += 1
                }
                Spacer()
                Button("Delete Card") {
                     cardCount -= 1
                }
            }
        }
            .padding()
    }
}

struct CardView: View {
    
    @State var isFaceUp = true
    let content: String
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

// I don know what is going on.














#Preview {
    ContentView()
}

