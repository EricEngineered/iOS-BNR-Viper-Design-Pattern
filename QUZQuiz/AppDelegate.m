//
//  AppDelegate.m
//  QUZQuiz
//
//  Created by Eric Anderson on 12/28/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import "AppDelegate.h"
#import "QUZViewController.h"
#import "QUZViewPresenter.h"
#import "QUZViewWireframe.h"

@interface AppDelegate ()

@property (nonatomic, strong) QUZViewWireframe *quizWireframe;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self configureDependencies];
    [self.quizWireframe presentQuizInterfaceFromWindow:self.window];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)configureDependencies {
    QUZViewController *quizController = [[QUZViewController alloc] init];
    QUZViewPresenter *quizPresenter = [[QUZViewPresenter alloc] init];
    QUZViewWireframe *quizWireframe = [[QUZViewWireframe alloc] init];
    
    quizController.presenter = quizPresenter;
    quizPresenter.wireframe = quizWireframe;
    quizWireframe.presenter = quizPresenter;
    
    self.quizWireframe = quizWireframe;
}

@end
