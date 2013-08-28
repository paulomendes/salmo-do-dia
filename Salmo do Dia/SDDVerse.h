//
//  SDDVerse.h
//  Salmo do Dia
//
//  Created by Paulo Mendes on 8/27/13.
//  Copyright (c) 2013 Paulo Mendes. All rights reserved.
//

#import "SDDObject.h"

@interface SDDVerse : SDDObject

@property (nonatomic, assign) NSInteger chapter;
@property (nonatomic, assign) NSInteger verse;
@property (nonatomic, assign) BOOL isRead;
@property (nonatomic, assign) NSString *text;


@end
