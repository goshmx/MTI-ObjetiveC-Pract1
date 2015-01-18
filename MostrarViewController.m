//
//  MostrarViewController.m
//  Practica 1
//
//  Created by TRON on 17/01/15.
//  Copyright (c) 2015 TRON. All rights reserved.
//

#import "MostrarViewController.h"
#import "Dependencias.h"

NSMutableArray *imagesArray;
NSMutableArray *nombresArray;
NSMutableArray *edadArray;
int iImage;

@interface MostrarViewController ()

@end

@implementation MostrarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imagenPersonaje.image = [UIImage imageNamed:imagesArray[iImage]];
    self.labelNombre.text = nombresArray[iImage];
    self.labelEdad.text = edadArray[iImage];
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

- (IBAction)butonEditar:(id)sender {
    [self performSegueWithIdentifier:@"sagaEditar" sender:self];
}


- (IBAction)botonBajarAlpha:(id)sender {
    float alpha = self.imagenPersonaje.alpha;
    alpha = alpha-0.10;
    
    self.imagenPersonaje.alpha = alpha;
    
    
}

- (IBAction)botonRegresar:(id)sender {
    [self performSegueWithIdentifier:@"sagaReinicio" sender:self];
}
- (IBAction)btnAlphaUp:(id)sender {
    float alpha = self.imagenPersonaje.alpha;
    alpha = alpha+0.10;
    self.imagenPersonaje.alpha = alpha;

}
@end
