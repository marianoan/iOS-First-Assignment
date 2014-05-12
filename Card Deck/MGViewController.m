//
//  MGViewController.m
//  Card Deck
//
//  Created by Mariano Gonzalez on 07/05/14.
//
//

#import "MGViewController.h"
#import "PlayingCardDeck.h"
#import "Deck.h"
#import "PlayingCard.h"
#import "Card.h"

@interface MGViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@property (strong, nonatomic) Deck *cardDeck;

@end

@implementation MGViewController

-(Deck *) cardDeck {
    if (!_cardDeck) _cardDeck = [[PlayingCardDeck alloc] init];
    return _cardDeck;
}

- (void) setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    Card *card = [[PlayingCard alloc] init];
    
    if ([sender.currentTitle length]) {
        UIImage *cardImage = [UIImage imageNamed:@"cardBack"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        card = [self.cardDeck drawRandomCard];
        if (card) {
            UIImage *cardImage = [UIImage imageNamed:@"cardFront"];
            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
        }
    }
    self.flipCount++;
    
}
@end
