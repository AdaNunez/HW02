//
//  Campus.h
//  HW02
//
//  Created by Ada  on 10/13/17.
//  Copyright © 2017 cop2654.mdc.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Campus : NSObject

@property (nonatomic, strong) NSString* information;
@property (nonatomic, strong) UIImage* image;

-(id)initWithData: (NSString *)info
                : (UIImage *) pic;


@end
