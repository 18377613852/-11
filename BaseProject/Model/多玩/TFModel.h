//
//  TFModel.h
//  BaseProject
//
//  Created by apple-jd09 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class TFAModel,TFDModel,TFGModel;
@interface TFModel : BaseModel

@property (nonatomic, strong) NSArray<TFAModel *> *a;

@property (nonatomic, strong) NSArray<TFDModel *> *d;

@property (nonatomic, strong) NSArray<TFGModel *> *g;

@end
@interface TFAModel : NSObject

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) NSArray<NSString *> *level;

@end

@interface TFDModel : NSObject

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) NSArray<NSString *> *level;

@end

@interface TFGModel : NSObject

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) NSArray<NSString *> *level;

@end

