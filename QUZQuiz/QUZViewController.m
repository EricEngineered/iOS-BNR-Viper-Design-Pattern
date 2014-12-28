//
//  QUZViewController.m
//  QUZQuiz
//
//  Created by Eric Anderson on 12/28/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import "QUZViewController.h"
#import "QUZViewPresenter.h"

@interface QUZViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation QUZViewController

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.presenter configureUserInterfaceForPresentation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)didTapShowQuestions:(id)sender {
    [self.presenter presentQuestion];
}


- (IBAction)didTapShowAnswers:(id)sender {
    [self.presenter presentAnswer];
}

#pragma mark - QUZMainView

- (void)setAnswerField:(NSString *)answer {
    self.answerLabel.text = answer;
}

- (void)setQuestionField:(NSString *)question {
    self.questionLabel.text = question;
}

@end
