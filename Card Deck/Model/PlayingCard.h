//
//  PlayingCard.h
//  Card Deck
//
//  Created by Mariano Gonzalez on 11/05/14.
//
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
