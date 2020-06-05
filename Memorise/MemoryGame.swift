//
//  MemoryGame.swift
//  Memorise Model
//
//  Created by Mark Blinder on 6/4/20.
//  Copyright © 2020 Mark Blinder. All rights reserved.
//

import Foundation // import all basic types

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>() // empty array of cards
        for pairIndex in 0..<numberOfPairsOfCards { // Fill array with pairs
            let content = cardContentFactory(pairIndex) // type CardContent
            cards.append(Card(id: pairIndex*2, isFaceUp: true, isMatched: false, content: content))
            cards.append(Card(id: pairIndex*2+1, isFaceUp: true, isMatched: false, content: content))
        }
    }
    
    func choose(card: Card) {
        print("Card chosen: \(card)")
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent // Generic type
    }
}
