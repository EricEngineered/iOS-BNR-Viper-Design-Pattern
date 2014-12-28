//
//  QUZViewWireframe.h
//  QUZQuiz
//
//  Created by Eric Anderson on 12/28/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QUZViewPresenter;

@interface QUZViewWireframe : NSObject

@property (nonatomic, strong) QUZViewPresenter *presenter;

- (void)presentQuizInterfaceFromWindow:(UIWindow *)window;

@end
