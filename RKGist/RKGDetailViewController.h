//
//  RKGDetailViewController.h
//  RKGist
//
//  Created by Blake Watters on 2/11/13.
//  Copyright (c) 2013 RestKit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RKGDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
