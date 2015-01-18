//
//  MostrarViewController.h
//  Practica 1
//
//  Created by TRON on 17/01/15.
//  Copyright (c) 2015 TRON. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MostrarViewController : UIViewController
- (IBAction)butonEditar:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelEdad;
@property (weak, nonatomic) IBOutlet UILabel *labelNombre;
- (IBAction)botonBajarAlpha:(id)sender;
- (IBAction)botonRegresar:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imagenPersonaje;
- (IBAction)btnAlphaUp:(id)sender;


@end
