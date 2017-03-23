//
//  DrinkCell.m
//  MenuSelection
//
//  Created by bitbender on 3/23/17.
//  Copyright © 2017 Key. All rights reserved.
//

#import "DrinkCell.h"
#import "ViewController.h"

@implementation DrinkCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    UIImage *btnImage1 = [UIImage imageNamed:@"syrup"];
    [self.button1 setImage:btnImage1 forState:UIControlStateNormal];
    UIImage *btnImage2 = [UIImage imageNamed:@"limau_ais"];
    [self.button2 setImage:btnImage2 forState:UIControlStateNormal];
    UIImage *btnImage3 = [UIImage imageNamed:@"teh_tarik"];
    [self.button3 setImage:btnImage3 forState:UIControlStateNormal];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)button1Tapped:(id)sender {
    self.selectedImage = self.button1.imageView.image;
    
}

- (IBAction)button2Tapped:(id)sender {
    self.selectedImage = self.button2.imageView.image;
}

- (IBAction)button3Tapped:(id)sender {
    self.selectedImage = self.button3.imageView.image;
}

@end
