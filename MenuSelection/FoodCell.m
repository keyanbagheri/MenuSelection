//
//  FoodCell.m
//  MenuSelection
//
//  Created by bitbender on 3/23/17.
//  Copyright © 2017 Key. All rights reserved.
//

#import "FoodCell.h"

@implementation FoodCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    UITapGestureRecognizer *tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [self.imageView1 addGestureRecognizer:tapGesture1];
    [self.imageView2 addGestureRecognizer:tapGesture2];
    [self.imageView3 addGestureRecognizer:tapGesture3];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)imageTapped:(UIGestureRecognizer *)sender {
    UIImageView *tappedView = (UIImageView *)sender.view;
    UIImage *tappedImage = tappedView.image;
    
    // 3. Call the delegate
    
    if (self.delegate){
        [self.delegate didSelectImage:tappedImage];
    }
}

@end
