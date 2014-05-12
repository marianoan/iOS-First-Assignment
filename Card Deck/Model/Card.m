//
//  Card.m
//  Card Deck
//
//  Created by Mariano Gonzalez on 11/05/14.
//
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)othercards {
    int score = 0;
    
    for (Card *card in othercards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
