//
//  QUZViewPresenter.h
//  QUZQuiz
//
//  Created by Eric Anderson on 12/28/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol QUZMainView;
@class QUZViewWireframe;

@interface QUZViewPresenter : NSObject

@property (nonatomic, strong) id<QUZMainView> quizView;
@property (nonatomic, strong) QUZViewWireframe *wireframe;

- (void)presentQuestion;
- (void)presentAnswer;
- (void)configureUserInterfaceForPresentation;

@end
