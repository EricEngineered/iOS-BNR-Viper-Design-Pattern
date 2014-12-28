//
//  QUZMainView.h
//  QUZQuiz
//
//  Created by Eric Anderson on 12/28/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol QUZMainView <NSObject>
- (void)setQuestionField:(NSString *)question;
- (void)setAnswerField:(NSString *)answer;
@end
