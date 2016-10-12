//
//  ViewController.m
//  Calc
//
//  Created by Sergey Kopytov on 19.05.16.
//  Copyright © 2016 Sergey Kopytov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clear:(id)sender{
    
    n = 0;
    
    [self tablo];
}

- (IBAction)allClear:(id)sender{
    
    doubleOperation = NO;
    
    n = 0;
    
    m = 0;
    
    [self tablo];
}

- (IBAction)num:(id)sender{
    
    if (operationEnter) {
        
        m = n;
        
        n = 0;
        
        operationEnter = NO;
        
    }
    
    n = (n * 10.0f) + [sender tag];
    
    
    
    [self tablo];
    
    NSLog(@"%li", (long)[sender tag]);
}

- (IBAction)operation:(id)sender{
        
    if (doubleOperation && !operationEnter) {
        
        switch (operation) {
                
            case plus:
                
                n = m + n;
                
                break;
                
            case minus:
                
                n = m - n;
                
                break;
                
            case multi:
                
                n = m * n;
                
                break;
                
            case divi:
                
                n = m / n;
                
                break;
                
            default:
                
                break;
                
        }
        
    }
        
    m = n;
        
    operation = [sender tag];
        
    operationEnter = YES;
        
    doubleOperation = YES;
        
    [self tablo];
    
    NSLog(@"%li", [sender tag]);
}

- (IBAction)inverse:(id)sender{
    
    n = -n;
    
    [self tablo];
    
}

- (void) tablo{
    
    NSString *str = [NSString stringWithFormat: @"%g", n];
    
    [displayLabel setText:str];
}

@end

