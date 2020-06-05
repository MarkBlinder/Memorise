//
//  EmojiMemoryGame.swift
//  Memorise ViewModel
//
//  Created by Mark Blinder on 6/4/20.
//  Copyright © 2020 Mark Blinder. All rights reserved.
//

import Foundation
import SwiftUI

// ViewModels are always a class. A portal between the view and the model. Should be sharable by all views
class EmojiMemoryGame {
    // Can only be accessed by the ViewModel. "Glass Door" can be created by using the private(set) modeifier
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in emojis[pairIndex] }
    }
    
    // MARK: -Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards // One liners implicit return keyword
    }
    
    // MARK: -Intent(s)
    func Choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
