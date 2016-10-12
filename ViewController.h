//
//  ViewController.h
//  Calc
//
//  Created by Sergey Kopytov on 19.05.16.
//  Copyright © 2016 Sergey Kopytov. All rights reserved.
//

#import <UIKit/UIKit.h>

enum {plus = 104, minus = 103, multi = 102, divi = 101};


@interface ViewController : UIViewController {

    IBOutlet UILabel *displayLabel;
    double n, m;
    NSInteger operation;
    BOOL operationEnter;
    BOOL doubleOperation;
    
}

- (IBAction)clear:(id)sender;

- (IBAction)allClear:(id)sender;

- (IBAction)num:(id)sender;

- (IBAction)operation:(id)sender;

- (IBAction)inverse:(id)sender;

- (void) tablo;

@end