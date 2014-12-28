//
//  QUZViewPresenter.m
//  QUZQuiz
//
//  Created by Eric Anderson on 12/28/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import "QUZViewPresenter.h"
#import "QUZMainView.h"
#import "QUZViewWireframe.h"

@interface QUZViewPresenter ()

@property (nonatomic, strong) NSArray *questions;
@property (nonatomic, strong) NSArray *answers;
@property (nonatomic, assign) NSUInteger currentQuestionIndex;

@end

@implementation QUZViewPresenter

#pragma mark - Initializer

- (instancetype)init {
    if (self = [super init]) {
        _questions = @[@"From what is cognac made?",
                       @"What is 7+7",
                       @"What is the capital of Vermont?"];
        _answers = @[@"Grapes",
                     @"14",
                     @"Montpelier"];
    }
    return self;
}

#pragma mark - Public

- (void)presentQuestion {
    if (!self.questions) {
        return;
    }
    
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex == self.questions.count) {
        self.currentQuestionIndex = 0;
    }
    
    [self.quizView setQuestionField:self.questions[self.currentQuestionIndex]];
    [self.quizView setAnswerField:@"???"];
}

- (void)presentAnswer {
    if (!self.answers) {
        return;
    }
    [self.quizView setAnswerField:self.answers[self.currentQuestionIndex]];
}

- (void)configureUserInterfaceForPresentation {
    
    [self.quizView setAnswerField:@"???"];
    [self.quizView setQuestionField:@"???"];
}

@end
