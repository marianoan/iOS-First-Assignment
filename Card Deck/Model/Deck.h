//
//  Deck.h
//  Card Deck
//
//  Created by Mariano Gonzalez on 11/05/14.
//
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addcard:(Card *)card;

-(Card *)drawRandomCard;

@end
