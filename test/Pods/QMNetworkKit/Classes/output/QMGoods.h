//
//  QMGoods.h
//  Juanpi_2.0
//
//  Created by Brick on 14-2-21.
//  Copyright (c) 2014年 Juanpi. All rights reserved.
//

/**
 *
 *   Goods模型对象
 *
 **/

#import "QMBaseOutput.h"

/**
 
 input.isDujia = goods.tagid ? @YES : @NO;
 input.imgURL = goods.picurl;
 input.title = goods.title;
 input.price = [goods.cprice stringValue];
 input.oldPrice = [goods.oprice stringValue];
 input.isBaoyou = goods.ismail ? @YES : @NO;
 input.isPingpai = goods.tag;
 input.starttime = goods.starttime;
 input.dateline = goods.dateline;
 
 **/


@interface QMGoods : QMBaseOutput
@property (strong, nonatomic) NSString * type;
/**
 *  避免冲突
 */
@property (strong, nonatomic) NSString * id_goods;//
/**
 *  标题
 */
@property (strong, nonatomic) NSString * title;
/**
 *  价格
 */
@property (strong, nonatomic) NSString * pic_url;
@property (strong, nonatomic) NSString * oprice;
@property (strong, nonatomic) NSString * cprice;
/**
 *  开始时间
 */
@property (strong, nonatomic) NSString * starttime;

@property (strong, nonatomic) NSString * dateline;
/**
 *  商品状态
 */
@property (strong, nonatomic) NSNumber * status;
/**
 *  link = 连接
 */
@property (strong, nonatomic) NSString * link;

/**
 *  <#Description#>
 */
@property (strong, nonatomic) NSString * num_iid;
/**
 *  tag == 4 品牌秒杀
 */
@property (strong, nonatomic) NSNumber * tag;

/**
 *  tagid = 是不是独家
 */
@property (strong, nonatomic) NSString * tagid;

/**
 *  是否是品牌
 */
@property (strong, nonatomic) NSString * isbrand;
@property (strong, nonatomic) NSString * taobao_flag;
@property (strong, nonatomic) NSString * ismail;
@property (strong, nonatomic) NSString * hottag;
@property (strong, nonatomic) NSString * sort;
@property (strong, nonatomic) NSString * oid;
@property (strong, nonatomic) NSString * bid;
/**
 *  商品详情
 */
@property (strong, nonatomic) NSString * des;
/**
 *  分享链接
 */
@property (strong, nonatomic) NSString * shareurl;//
/**
 *  手机专享价格
 */
@property (strong, nonatomic) NSString * isphonetag;//
/**
 *  0:普通  1：会员   2：拍下改价
 */
@property (strong, nonatomic) NSNumber * isvip;
/**
 *  isNew
 */
@property (strong, nonatomic) NSNumber * is_new;
/**
 *  明日预告为空的时候提示
 */
@property (strong, nonatomic) NSString * tips;
/**
 *  不为空或者0 为秒杀商品
 */
@property (strong, nonatomic) NSString * coupon_id;
/**
 *  优惠卷价格
 */
@property (strong, nonatomic) NSString * quanPrice;
/**
 *  评论集合
 */
@property (strong, nonatomic) NSArray *commentsData;
/**
 *  图片展示集合
 */
@property (strong, nonatomic) NSArray *img_urlsData;

/**
 * 商品是否使用淘宝返利接口
 */
@property (strong, nonatomic) NSString * rebate;
@end



@interface CommentsData : QMBaseOutput
@property (strong, nonatomic) NSString * user_name;
@property (strong, nonatomic) NSString * comment;
@property (strong, nonatomic) NSString * level_img;
@property (strong, nonatomic) NSString * level_t;
@property (strong, nonatomic) NSString * data;
@end

@interface Image_urlData : QMBaseOutput
@property (strong, nonatomic) NSString * url;
@property (strong, nonatomic) NSString * width;
@property (strong, nonatomic) NSString * height;
@end
