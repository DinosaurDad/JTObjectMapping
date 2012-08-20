//
//  JTMappingBlockWrapper.m
//  Timehop
//
//  Created by Benny Wong on 8/20/12.
//  Copyright (c) 2012 Timehop. All rights reserved.
//

#import "JTMappingBlockWrapper.h"

@implementation JTMappingBlockWrapper

@synthesize mapperBlock, key;

+ (JTMappingBlockWrapper *)mappingWithKey:(NSString *)key withBlock:(JTMapperBlock)block {
    JTMappingBlockWrapper *wrapper = [[JTMappingBlockWrapper alloc] init];
    wrapper.mapperBlock = block;
    wrapper.key = key;
    return wrapper;
}

- (id<JTMappings>)execute:(id)obj {
    return mapperBlock(self.key ,obj);
}

@end
