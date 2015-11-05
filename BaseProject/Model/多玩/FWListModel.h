//
//  FWListModel.h
//  BaseProject
//
//  Created by apple-jd09 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class FWListPurpleModel,FWListYellowModel,FWListBlueModel,FWListRedModel;
@interface FWListModel : BaseModel

@property (nonatomic, strong) NSArray<FWListPurpleModel *> *Purple;

@property (nonatomic, strong) NSArray<FWListBlueModel *> *Blue;

@property (nonatomic, strong) NSArray<FWListYellowModel *> *Yellow;

@property (nonatomic, strong) NSArray<FWListRedModel *> *Red;

@end
@interface FWListPurpleModel : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, assign) NSInteger Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, assign) NSInteger iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, assign) NSInteger iplev1;

@end

@interface FWListYellowModel : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, copy) NSString *Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, copy) NSString *iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, copy) NSString *iplev1;

@end

@interface FWListBlueModel : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, copy) NSString *Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, copy) NSString *iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, copy) NSString *iplev1;

@end

@interface FWListRedModel : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, assign) NSInteger Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, copy) NSString *iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, copy) NSString *iplev1;

@end

