//
//  ViewController.h
//  HW02
//
//  Created by Ada  on 10/13/17.
//  Copyright © 2017 cop2654.mdc.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UIImageView *uIIVImage;
@property (weak, nonatomic) IBOutlet UILabel *lblInformation;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;
@property (weak, nonatomic) IBOutlet UIButton *btnPrevious;

@property (strong, nonatomic) NSMutableArray *arrayCampuses;

- (IBAction)btnNext:(id)sender;
- (IBAction)btnPrevious:(id)sender;

@end

