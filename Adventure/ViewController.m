//
//  ViewController.m
//  Adventure
//
//  Created by Philipe Castilho on 5/13/14.
//  Copyright (c) 2014 Philipe's Productions. All rights reserved.
//

#import "ViewController.h"
#import "CustomViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *ending;

@end

@implementation ViewController

-(IBAction)unwindFromCustomViewController:(UIStoryboardSegue *)segue
{
    self.ending.text = [segue.sourceViewController theEnding];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{

    UIViewController *nextViewController = segue.destinationViewController;

    nextViewController.navigationItem.title = sender.currentTitle;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
   
    // Do any additional setup after loading the view.
}

@end
