//
//  ContentView.swift
//  stanford swift course
//
//  Created by John Stauffer on 1/1/21.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack{ //spacing: has a default that adds padding to elements
            ForEach(viewModel.cards.shuffled()) { card in // can also be declared as
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}

struct CardView: View{
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack { //combiner of views
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white) //override background color even in dark mode
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}
