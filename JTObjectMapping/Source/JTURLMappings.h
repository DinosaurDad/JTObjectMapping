//
//  JTURLMappings.h
//  Timehop
//
//  Created by Benny Wong on 8/20/12.
//  Copyright (c) 2012 Timehop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JTSetMappings.h"

@protocol JTURLMappings <NSObject>

- (NSString *)key;

@end

@interface JTURLMappings : NSObject <JTURLMappings>

@property (nonatomic, copy) NSString *key;

+ (id <JTURLMappings>)mappingWithKey:(NSString *)key;

@end
