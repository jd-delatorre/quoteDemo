//
//  ViewController.m
//  quoteDemo
//
//  Created by John De La Torre on 2/8/14.
//  Copyright (c) 2014 John De La Torre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGetQuote:(id)sender {
    NSError *error = nil;
    
    NSURL *theURL = [NSURL URLWithString:@"http://mlk-quotes.appspot.com/quotes"];
    
    NSString *theQuote = [NSString stringWithContentsOfURL:theURL
                                                  encoding:NSASCIIStringEncoding
                                                     error:&error];
    
    if (theQuote) {
        _lblQuote.text = theQuote;
    }
    else{
        _lblQuote.text = [NSString stringWithFormat:@"Error, can't get quote, Details: %@", error];
    }
}
@end
