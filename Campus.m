//
//  Campus.m
//  HW02
//
//  Created by Ada  on 10/13/17.
//  Copyright © 2017 cop2654.mdc.edu. All rights reserved.
//

#import "Campus.h"

@implementation Campus

-(id)initWithData: (NSString *)info : (UIImage *) pic{
    [self setImage:pic];
    [self setInformation:info];
    
    return self;
}

@end
