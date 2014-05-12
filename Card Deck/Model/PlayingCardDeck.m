//
//  PlayingCardDeck.m
//  Card Deck
//
//  Created by Mariano Gonzalez on 11/05/14.
//
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init {
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addcard:card];
            }
        }
        
    }
    
    return self;
}

@end
