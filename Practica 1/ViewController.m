//
//  ViewController.m
//  Practica 1
//
//  Created by TRON on 17/01/15.
//  Copyright (c) 2015 TRON. All rights reserved.
//

#import "ViewController.h"
#import "Dependencias.h"

NSMutableArray *imagesArray;
NSMutableArray *nombresArray;
NSMutableArray *edadArray;
int iImage;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    iImage = 0;
    imagesArray = [[NSMutableArray alloc] initWithObjects: @"homer.png", @"marge", @"bart.png", @"lisa.png", @"Maggie.png", nil];
   nombresArray = [[NSMutableArray alloc] initWithObjects: @"Homero", @"Marge", @"Bart", @"Lisa", @"Maggie", nil];
    edadArray = [[NSMutableArray alloc] initWithObjects: @"34", @"32", @"10", @"8", @"2", nil];
    
    self.Imageinfo.image = [UIImage imageNamed:imagesArray[iImage]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrar:(id)sender {
    [self performSegueWithIdentifier:@"sagaMostrar" sender:self];
}

- (IBAction)siguiente:(id)sender {
    if (iImage >= 4){
        iImage = 0;
    }
    else{
        iImage++;
    }
    self.Imageinfo.image = [UIImage imageNamed:imagesArray[iImage]];
}

- (IBAction)anterior:(id)sender {
    if (iImage > 0){
        iImage--;
    }
    else{
        iImage = 4;
    }
    self.Imageinfo.image = [UIImage imageNamed:imagesArray[iImage]];
}
@end
