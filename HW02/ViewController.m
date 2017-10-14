//
//  ViewController.m
//  HW02
//
//  Created by Ada  on 10/13/17.
//  Copyright © 2017 cop2654.mdc.edu. All rights reserved.
//

#import "ViewController.h"
#import "Campus.h"

@interface ViewController ()

@end
int i = 0;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Campus *hialeahCampus = [[Campus alloc]initWithData:@"HIALEAH\n Serving the Greater Hialeah-Miami Lakes. Curses leading to Associate in Arts or Science. Vocational Credit Certification and Computer Technology, office Technology, Electronics and Early Chilhood Development.":[UIImage imageNamed:@"hialeah"]];
    Campus *homesteadCampus = [[Campus alloc]initWithData:@"HOMESTEAD\nLocated in the historic downtown district of the City of Homestead, with the mission to deliver a full range of educational programs, enhancing the community's capacity to meet cultural and social needs." :[UIImage imageNamed:@"homestead"]];
    Campus *interamericanCampus = [[Campus alloc]initWithData:@"INTERAMERICAN\nAt the heart if Little Havana is home for the School of Education, the Dual Language Honors College, and Translation and Interpretation Studies among many other programs.Proud to serve traditional and non-traditional students.":[UIImage imageNamed:@"interamerican"]];
    Campus *kendallCampus = [[Campus alloc]initWithData:@"KENDALL\nSituated on a 185-acre tract of trees and lakes. Home to a variety of programs and specialized institutes. Equipped with the latest technologies, wellness center, athletic fields and Olympic Sized Pool." :[UIImage imageNamed:@"kendall"]];
    Campus *medicalCampus = [[Campus alloc]initWithData:@"MEDICAL\nSituated within the city's medical center complex. Along with the other members of the complex it forms the backbone of Miami's health care community. Disciplines in nursing and allied health and equipped with state-of-the-art technologies.":[UIImage imageNamed:@"medical"]];
    Campus *northCampus = [[Campus alloc]initWithData:@"NORTH\n245 acres of beautifully landscaped campus. North Campus is a getaway for students wishing to upgrade skills and complete one-year certificate programs, prepare for licensing or start working on a bachelor's degree." :[UIImage imageNamed:@"north"]];
    Campus *westCampus = [[Campus alloc]initWithData:@"WEST\nServing Doral and surronding areas. Offering Associates in Arts and Science degrees, corporate training programs and promising to be the next exciting learning enviroment for the greater Miami community.":[UIImage imageNamed:@"west"]];
    Campus *wolfsonCampus = [[Campus alloc]initWithData:@"WOLFSON\nAt downtown Miami and host of all manner of civic and cultural disclosure. Programs in banking/financial, business, computer technology, paralegal studies, architecture , economics, hospitality management, the arts, humanities and social sciences." :[UIImage imageNamed:@"wolfson"]];
    
    self.arrayCampuses = [[NSMutableArray alloc]init];
    [self.arrayCampuses addObject:hialeahCampus];
    [self.arrayCampuses addObject:homesteadCampus];
    [self.arrayCampuses addObject:interamericanCampus];
    [self.arrayCampuses addObject:kendallCampus];
    [self.arrayCampuses addObject:medicalCampus];
    [self.arrayCampuses addObject:northCampus];
    [self.arrayCampuses addObject:westCampus];
    [self.arrayCampuses addObject:wolfsonCampus];
    
    self.uIIVImage.image = hialeahCampus.image;
    self.lblInformation.text = hialeahCampus.information;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnNext:(id)sender {
    if (i < ([self.arrayCampuses count]-1)){
        [self.btnNext setEnabled:YES];
        [self.btnPrevious setEnabled:YES];
        i++;
        if (i == ([self.arrayCampuses count]-1)){
            [self.btnNext setEnabled:NO];
        }
        Campus *campusObject = [self.arrayCampuses objectAtIndex:i];
        self.uIIVImage.image = campusObject.image;
        self.lblInformation.text = campusObject.information;
    }
}

- (IBAction)btnPrevious:(id)sender {
    if (i > 0) {
        i = i-1;
        if (i == 0){
            [self.btnPrevious setEnabled:NO];
        }
        Campus *campusObject = [self.arrayCampuses objectAtIndex:i];
        i = i-1;
        self.uIIVImage.image = campusObject.image;
        self.lblInformation.text = campusObject.information;
    }
}
@end
