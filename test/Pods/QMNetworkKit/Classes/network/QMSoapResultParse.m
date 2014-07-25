//
//  QMSoapResultParse.m
//  Juanpi_2.0
//
//  Created by Brick on 14-2-20.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

#import "QMSoapResultParse.h"
#import "QMJSONManager.h"

@interface QMSoapResultParse ()
@property (strong, nonatomic) NSData * parseData;
@property (strong, nonatomic) NSMutableString * jsonResult;
@property (strong, nonatomic) void(^callback)(NSString* jsonResult);
@property (strong, nonatomic) NSNumber * getReturn;
@end

@implementation QMSoapResultParse

+(void)parse:(NSData*)data complete:(void(^)(id jsonResult))callback{
    QMSoapResultParse * parse = [[QMSoapResultParse alloc]initWithData:data];
    parse.callback = callback;
    [parse parse];
}


-(NSMutableString*)jsonResult{
    if (_jsonResult) {
        return _jsonResult;
    }
    _jsonResult = [[NSMutableString alloc]initWithCapacity:0];
    return _jsonResult;
}

- (id)initWithData:(NSData*)data
{
    self = [super init];
    if (self) {
        self.parseData = data;
        self.getReturn = @NO;
    }
    return self;
}

-(void)parse{
    NSXMLParser * parser = [[NSXMLParser alloc]initWithData:self.parseData];
    parser.delegate = self;
    [parser parse];
}

-(void)checkElement:(NSString*)element value:(NSString*)value{
    if (![self.getReturn boolValue]) {
        return;
    }
    if (value) {
        [self.jsonResult appendString:value];
    }
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if ([elementName isEqualToString:@"return"]) {
        self.getReturn = @YES;
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [self checkElement:nil value:string];
}

- (void)parserDidEndDocument:(NSXMLParser *)parser{
    id object = [QMJSONManager objectFromJSONString:self.jsonResult];
    self.callback(object);
}

@end