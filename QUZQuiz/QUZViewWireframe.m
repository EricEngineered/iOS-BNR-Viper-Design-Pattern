//
//  QUZViewWireframe.m
//  QUZQuiz
//
//  Created by Eric Anderson on 12/28/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import "QUZViewWireframe.h"
#import "QUZViewPresenter.h"
#import "QUZViewController.h"

static NSString * const QuizViewControllerIdentifier = @"QUZViewController";

@implementation QUZViewWireframe

#pragma mark - Public

- (void)presentQuizInterfaceFromWindow:(UIWindow *)window {
    QUZViewController *quizViewController = [self quizViewControllerFromStoryboard];
    quizViewController.presenter = self.presenter;
    
    self.presenter.quizView = quizViewController;
    
    [self showRootViewController:quizViewController inWindow:window];
}

#pragma mark - Private

- (QUZViewController *)quizViewControllerFromStoryboard {
    UIStoryboard *storyboard = [self mainStoryboard];
    QUZViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:QuizViewControllerIdentifier];
    return viewController;
}

- (UIStoryboard *)mainStoryboard {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    return storyboard;
}

- (void)showRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window {
    window.rootViewController = viewController;
}

@end
