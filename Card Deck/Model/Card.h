//
//  Card.h
//  Card Deck
//
//  Created by Mariano Gonzalez on 11/05/14.
//
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
