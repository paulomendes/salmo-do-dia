//
//  SDDHomeViewController.m
//  Salmo do Dia
//
//  Created by Paulo Mendes on 8/27/13.
//  Copyright (c) 2013 Paulo Mendes. All rights reserved.
//

#import "SDDHomeViewController.h"
#import "SDDDatabase.h"

@interface SDDHomeViewController ()

@end

@implementation SDDHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSString *text = [SDDDatabase verseTextFromChapter:1 verse:1];
    
    NSLog(@"%@", text);
}

@end
