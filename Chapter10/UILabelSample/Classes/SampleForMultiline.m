//
//  SampleForMultiline.m
//
//  Created by ToKoRo on 2009-08-25.
//

#import "SampleForMultiline.h"

@implementation SampleForMultiline

- (void)viewDidLoad {
  [super viewDidLoad];

  self.title = @"Multiline";
  self.view.backgroundColor = [UIColor blackColor];

  UILabel* label0 = [[[UILabel alloc] initWithFrame:CGRectMake( 10,  10, 300, 60 )] autorelease];
  UILabel* label1 = [[[UILabel alloc] initWithFrame:CGRectMake( 10,  90, 300, 60 )] autorelease];
  UILabel* label2 = [[[UILabel alloc] initWithFrame:CGRectMake( 10, 170, 300, 60 )] autorelease];

  NSString* longText =
    @"長文になりまして申し訳ありません。今後は気をつけます。"
     "でも、３行めに突入させていただきます。";
  label0.text = label1.text = label2.text = longText;

  label0.numberOfLines = 1;
  label1.numberOfLines = 2;
  label2.numberOfLines = 3;

  [self.view addSubview:label0];
  [self.view addSubview:label1];
  [self.view addSubview:label2];
}

@end
