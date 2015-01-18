//
//  EditarViewController.m
//  Practica 1
//
//  Created by TRON on 17/01/15.
//  Copyright (c) 2015 TRON. All rights reserved.
//

#import "EditarViewController.h"
#import "Dependencias.h"

NSMutableArray *imagesArray;
NSMutableArray *nombresArray;
NSMutableArray *edadArray;
int iImage;


@interface EditarViewController ()

@end

@implementation EditarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputNombre.text = nombresArray[iImage];
    self.inputEdad.text = edadArray[iImage];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)boton_guardar:(id)sender {
    
    nombresArray[iImage] = self.inputNombre.text;
    edadArray[iImage] = self.inputEdad.text;
    [self performSegueWithIdentifier:@"sagaRegresoMostrar" sender:self];
}
@end
