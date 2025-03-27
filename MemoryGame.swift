//
//  MemoryGame.swift
//  Memorize
//
//  Created by AMTK on 2025/03/25.
//

import Foundation
 
struct MemoryGame<CardContent> where CardContent {
    private(set) var cards: Array<Card>
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        //add numberOfParisOfCards x 2 cards
        for pairIndex in 0 ..< max(2, numberOfPairOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(card: Card) {
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    struct Card {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
    }
}
