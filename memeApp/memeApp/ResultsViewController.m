//
//  ResultsViewController.m
//  memeApp
//
//  Created by Fatima Zenine Villanueva on 9/13/15.
//  Copyright © 2015 apps. All rights reserved.
//

#import "ResultsViewController.h"
#import "cameraImageDelegate.h"
#import "MemeViewController.h"

@interface ResultsViewController()

@property (nonatomic) BOOL touchingLabel;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panning:)];
    [self.memeLabel addGestureRecognizer:pan];
}

-(void) viewWillAppear:(BOOL)animated {
    [self.view setNeedsDisplay];
}

- (void)panning:(UIPanGestureRecognizer *)gesture {
    switch (gesture.state) {
        case UIGestureRecognizerStateChanged: {
            CGPoint location = [gesture locationInView:self.view];
            self.memeLabel.center = location;
            break;
        }
        default:
            return;
    }
}

- (void) memeGenerator: (UIImage *)memeImage theLabel: (NSString *)memeString{
    self.memeImage.image = memeImage;
    self.memeLabel.text = memeString;
    NSLog(@"image: %@, text: %@", memeImage, memeString);
}

-(void) prepareForSegue:(nonnull UIStoryboardSegue *)segue sender:(nullable id)sender {
    MemeViewController *vc = segue.destinationViewController;
    vc.delegate = self;
}


-(UIImage *)capture{
    UIGraphicsBeginImageContext(self.view.bounds.size);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *imageView = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(imageView, nil, nil, nil); //if you need to save
    return imageView;
}

- (IBAction)saveButtonTapped:(id)sender {
    if (self.memeImage.image != nil) {
        [self capture];
    }
}

@end
