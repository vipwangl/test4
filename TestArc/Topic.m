//
//  TestObject.m
//  TestArc
//
//  Created by mamawang on 14-2-20.
//  Copyright (c) 2014年 mamawang. All rights reserved.
//

#import "Topic.h"

@implementation Topic

@synthesize title = _title;
@synthesize subTitle = _subTitle;
@synthesize content = _content;

-(id)init{
    if(self = [super init]){
        _title = [[NSString alloc]initWithFormat:@"This is title"];
        self.subTitle = @"This is subtitle";
        self.content = @"This is content";
    }
    return self;
}

-(void)operation{
    NSLog(@"title:%@, subtitle:%@, content:%@", _title, _subTitle, _content);
    
    
    //因为subTitle是声明为weak，所以subTitle和title指向的是同一个地址
    //但如果subTitle声明为strong的话，其引用计数会加一，这样当title释放时，subTitle不会跟着释放。
    self.subTitle = _title;
    
    //content与subTitle类似
    self.content = _title;
    
    //title指向的内存已经释放，因为subTitle声明为weak，subTitle也跟着释放了，并自动置为nil，但content声明为unsafe_unretained，对象指针不会置为nil，所以现在成为了野指针。
    _title = nil;
    
//    _subTitle = _title;
//    _content = _title;
//    _title = nil;
}

@end
