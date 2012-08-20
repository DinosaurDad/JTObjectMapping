//
//  JTMappingBlockWrapper.h
//  Timehop
//
//  Created by Benny Wong on 8/20/12.
//  Copyright (c) 2012 Timehop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JTMappings.h"

typedef id<JTMappings>(^JTMapperBlock)(NSString *key, id obj);

@interface JTMappingBlockWrapper : NSObject<JTMappings> {
    JTMapperBlock mapperBlock;
}

@property (readwrite,copy) JTMapperBlock mapperBlock;
@property (nonatomic, retain) NSString *key;
@property (nonatomic, retain) NSDictionary *mapping;
@property (nonatomic, assign) Class targetClass;

+ (JTMappingBlockWrapper *)mappingWithKey:(NSString *)key withBlock:(JTMapperBlock)block;
- (id<JTMappings>)execute:(id)obj;

@end
