//
//  SDDDatabase.m
//  Salmo do Dia
//
//  Created by Paulo Mendes on 8/27/13.
//  Copyright (c) 2013 Paulo Mendes. All rights reserved.
//

#import "SDDDatabase.h"
#import <FMDatabaseQueue.h>
#import <FMDatabase.h>
#import <SAMCategories.h>

@implementation SDDDatabase

static NSString * const kDatabaseName = @"salmos.sqlitedb";

+ (void)deleteDatabase {
    NSURL *dbURL = [[[UIApplication sharedApplication] sam_documentsDirectoryURL] URLByAppendingPathComponent:kDatabaseName];
    [[NSFileManager defaultManager] removeItemAtURL:dbURL error:nil];
}

+ (FMDatabaseQueue *)sharedDatabaseQueue {
    static dispatch_once_t onceToken;
    static FMDatabaseQueue *queue;
    dispatch_once(&onceToken, ^{
        NSURL *dbURL = [[[UIApplication sharedApplication] sam_documentsDirectoryURL] URLByAppendingPathComponent:kDatabaseName];
        queue = [FMDatabaseQueue databaseQueueWithPath:[dbURL absoluteString]];
        
        [queue inDatabase:^(FMDatabase *db) {
            [db setLogsErrors:YES];
        }];
    });
    
    return queue;
}

+ (NSString *)verseTextFromChapter:(NSInteger)chapter verse:(NSInteger)verse {
    __block NSString *text;
    
    [[self sharedDatabaseQueue] inDatabase:^(FMDatabase *db) {
        FMResultSet *result = [db executeQuery:@"SELECT texto FROM salmospt WHERE capitulo = 1 and versiculo = 1"];
        
        if ([result next]) {
            text = [result resultDictionary][@"exam_year"];
        }
        [result close];
    }];
    
    return text;
}

@end
