//
//  TestObject.h
//  TestArc
//
//  Created by mamawang on 14-2-20.
//  Copyright (c) 2014年 mamawang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Topic : NSObject

@property(nonatomic, strong)NSString *title;
@property(nonatomic, strong)NSString *subTitle;
//@property(nonatomic, weak)NSString *subTitle;
@property(nonatomic, unsafe_unretained)NSString *content;

-(void)operation;

@end
