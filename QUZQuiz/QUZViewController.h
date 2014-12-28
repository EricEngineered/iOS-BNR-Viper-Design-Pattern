//
//  ViewController.h
//  QUZQuiz
//
//  Created by Eric Anderson on 12/28/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QUZMainView.h"

@class QUZViewPresenter;

@interface QUZViewController : UIViewController <QUZMainView>

@property (nonatomic, strong) QUZViewPresenter *presenter;

@end

