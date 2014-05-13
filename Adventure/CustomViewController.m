//
//  CustomViewController.m
//  Adventure
//
//  Created by Philipe Castilho on 5/13/14.
//  Copyright (c) 2014 Philipe's Productions. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()
@property (weak, nonatomic) IBOutlet UITextView *endingOne;
@property (weak, nonatomic) IBOutlet UITextView *endingTwo;
@end

@implementation CustomViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{

    CustomViewController *nextViewController = segue.destinationViewController;

    nextViewController.navigationItem.title = sender.currentTitle;

    NSString *textValueOne = [NSString stringWithFormat:@"%@", self.endingOne.text];
    NSString *textValueTwo = [NSString stringWithFormat:@"%@", self.endingTwo.text];

    if (textValueOne != nil) {
        self.theEnding = textValueOne;
    }

    if (textValueTwo != nil) {
        self.theEnding = textValueTwo;
    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
