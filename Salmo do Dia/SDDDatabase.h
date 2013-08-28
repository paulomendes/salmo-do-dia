//
//  SDDDatabase.h
//  Salmo do Dia
//
//  Created by Paulo Mendes on 8/27/13.
//  Copyright (c) 2013 Paulo Mendes. All rights reserved.
//

#import "SDDObject.h"

@interface SDDDatabase : SDDObject

+ (NSString *)verseTextFromChapter:(NSInteger)chapter verse:(NSInteger)verse;

@end
