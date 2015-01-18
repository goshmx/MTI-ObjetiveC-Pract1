//
//  ViewController.h
//  Practica 1
//
//  Created by TRON on 17/01/15.
//  Copyright (c) 2015 TRON. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *Imageinfo;
- (IBAction)mostrar:(id)sender;
- (IBAction)siguiente:(id)sender;
- (IBAction)anterior:(id)sender;


@end

