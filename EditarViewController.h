//
//  EditarViewController.h
//  Practica 1
//
//  Created by TRON on 17/01/15.
//  Copyright (c) 2015 TRON. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditarViewController : UIViewController
- (IBAction)boton_guardar:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *inputEdad;
@property (weak, nonatomic) IBOutlet UITextField *inputNombre;

@end
