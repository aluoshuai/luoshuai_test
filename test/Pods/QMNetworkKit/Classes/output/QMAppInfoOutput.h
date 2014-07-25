//
//  QMAppInfoOutput.h
//  Juanpi_2.0
//
//  Created by lee on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseOutput.h"
#import "QMAppInfo.h"
#import "QMBanner.h"
#import "QMTaobaoSite.h"
#import "QMTBConfig.h"

@interface QMAppInfoOutput : QMBaseOutput

@end

@interface QMAppInfoOutput_vercheck : QMAppInfoOutput

@property (strong, nonatomic) QMAppInfo * info;

@end

@interface QMAppInfoOutput_savePhoneInfo : QMAppInfoOutput

@property (strong, nonatomic) NSString  * ticks;

@end

@interface QMAppInfoOutput_appJumpInfo : QMAppInfoOutput

@end

@interface QMAppInfoOutput_openAct : QMAppInfoOutput

@property (strong, nonatomic) NSNumber * isopen;

@end

@interface QMAppInfoOutput_getActBanner : QMAppInfoOutput

@property (strong, nonatomic) NSArray * bannerArray;

@end

@interface QMAppInfoOutput_tbsite : QMAppInfoOutput

@property (strong, nonatomic) QMTBConfig * taobaoconfig;

@end

@interface QMAppInfoOutput_getWelPic : QMAppInfoOutput

@property (strong, nonatomic) QMAppInfo * info;
@end