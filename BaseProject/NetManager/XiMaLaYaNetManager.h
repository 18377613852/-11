//
//  XiMaLaYaNetManager.h
//  BaseProject
//
//  Created by apple-jd09 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "MusicListModel.h"
#import "MusicCategoryContentModel.h"
@interface XiMaLaYaNetManager : BaseNetManager

+(id)getMusicListPageId:(NSInteger)pageId CompletionHandle:(void(^)(MusicListModel *model, NSError *error))completionHandle;
+(id)getMusicCategoryContentID:(NSInteger)ID PageId:(NSInteger)pageId CompletionHandle:(void(^)(MusicCategoryContentModel *model, NSError *error))completionHandle;



@end
















