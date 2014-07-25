//
//  QMAppInfoCommand.h
//  Juanpi_2.0
//
//  Created by lee on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMBaseCommand.h"
#import "QMAppInfoOutput.h"

@interface QMAppInfoCommand : QMBaseCommand

@end

//<wsdl:message name="vercheck2Request">
//<wsdl:part name="method" type="xsd:string" note="$method"/>
//<wsdl:part name="channel_id" type="xsd:string" note="频道id"/>
//<wsdl:part name="client_ver" type="xsd:string" note="客户端版本号"/>
//</wsdl:message>
@interface QMAppInfoCommand_vercheck : QMAppInfoCommand
@property (nonatomic,strong) NSString *channel_id;
@property (nonatomic,strong) NSString *client_ver;
@end

@interface QMAppInfoCommand_savePhoneInfo : QMAppInfoCommand

@property (strong, nonatomic) NSString * data;

//内部设置
@property (strong, nonatomic) NSString * did;
@property (strong, nonatomic) NSString * dmodel;
@property (strong, nonatomic) NSString * dver;
@property (strong, nonatomic) NSString * ver;
@property (strong, nonatomic) NSString * droot;

@end

@interface QMAppInfoCommand_appJumpInfo : QMAppInfoCommand

@property (strong, nonatomic) NSString * pid;
@property (nonatomic,strong) NSString *jticks;

//内部设置
@property (nonatomic,strong) NSString *appticks;
@property (nonatomic,strong) NSString *uid;


@end

@interface QMAppInfoCommand_openAct : QMAppInfoCommand
@property (strong, nonatomic) NSString * cline_ver;
@end

@interface QMAppInfoCommand_getActBanner : QMAppInfoCommand

@end

@interface QMAppInfoCommand_tbsite : QMAppInfoCommand
@property (nonatomic,strong) NSString *client_ver;
@end

@interface QMAppInfoCommand_getWelPic : QMAppInfoCommand

@end