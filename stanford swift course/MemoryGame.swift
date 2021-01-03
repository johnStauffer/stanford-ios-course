//
//  MemoryGame.swift
//  stanford swift course
//
//  Created by John Stauffer on 1/2/21.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards = Array<Card>()
    
    func choose(card:Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content ))
            cards.append(Card(id: pairIndex * 2 + 1, content: content ))
        }
    }
    
    struct Card: Identifiable {
        var id: Int
        
        var isFaceUp:Bool = false
        var isMatched:Bool =  false
        var content: CardContent
    }
}

