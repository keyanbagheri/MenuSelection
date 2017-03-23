//
//  FoodCell.h
//  MenuSelection
//
//  Created by bitbender on 3/23/17.
//  Copyright © 2017 Key. All rights reserved.
//

#import <UIKit/UIKit.h>

// 1. Define the delegate
@protocol FoodCellDelegate <NSObject>
-(void)didSelectImage:(UIImage *)image;
@end

@interface FoodCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;

// 2. Set the delegate
@property (weak, nonatomic) id<FoodCellDelegate> delegate;

@end
