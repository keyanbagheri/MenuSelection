//
//  ViewController.m
//  MenuSelection
//
//  Created by bitbender on 3/23/17.
//  Copyright © 2017 Key. All rights reserved.
//

#import "ViewController.h"
#import "FoodCell.h"
#import "DrinkCell.h"
//#import <UIKit/UIKit.h> Same as the @import below
@import UIKit;
//@import is a new addition when ios started transitioning to swift
//it is used for calling a module
@import AVFoundation;

@interface ViewController () <UITableViewDataSource, FoodCellDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self prepareTableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareTableView {
    self.tableView.dataSource = self;
}

#pragma mark - UITableView DataSourece

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0) {
        FoodCell *cell = [tableView dequeueReusableCellWithIdentifier:@"foodCell" forIndexPath:indexPath];
    //    
    //    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(selectImage:)];
    //    
    //    [cell.imageView1 addGestureRecognizer:tapGesture];
    //
        
        cell.delegate = self;
        return cell;
    } else {
        DrinkCell *cell = [tableView dequeueReusableCellWithIdentifier:@"drinkCell" forIndexPath:indexPath];
//        cell.button1.tag = indexPath.row;
//        [cell.button1 addTarget:self action:@selector(yourButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
//        cell.button2.tag = indexPath.row;
//        [cell.button2 addTarget:self action:@selector(yourButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
//        cell.button2.tag = indexPath.row;
//        [cell.button2 addTarget:self action:@selector(yourButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
//        UIImage *btnImage1 = [UIImage imageNamed:@"syrup"];
//        [cell.button1 setImage:btnImage1 forState:UIControlStateNormal];
//        UIImage *btnImage2 = [UIImage imageNamed:@"limau_ais"];
//        [cell.button2 setImage:btnImage2 forState:UIControlStateNormal];
//        UIImage *btnImage3 = [UIImage imageNamed:@"teh_tarik"];
//        [cell.button3 setImage:btnImage3 forState:UIControlStateNormal];
        return cell;
    }
}


- (void)didSelectImage:(UIImage *)image {
    self.foodImage.image = image;
}

-(void)yourButtonClicked:(UIButton*)sender
{
    if (sender.tag == 0)
    {
        self.drinkImage.image = sender.imageView.image;
    }
}

@end
