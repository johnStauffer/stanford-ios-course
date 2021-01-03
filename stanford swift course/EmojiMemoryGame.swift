//
//  EmojiMemoryGame.swift
//  stanford swift course
//
//  Created by John Stauffer on 1/2/21.
//

import Foundation



class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃","💀"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
            return emojis[pairIndex]
        }
    }
    
        
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - INTENT(s)
    func choose(card:MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    
}
