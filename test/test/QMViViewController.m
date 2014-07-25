//
//  QMViViewController.m
//  test
//
//  Created by luoshuai on 14/7/9.
//  Copyright (c) 2014年 QM. All rights reserved.
//

#import "QMViViewController.h"
#import "AFNetworking.h"
@interface QMViViewController ()
@property (nonatomic, strong)UIImageView *imageViewB;
@end

@implementation QMViViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _imageViewB = [[UIImageView alloc]initWithFrame:CGRectMake(0, 100, 100, 100)];
    [_imageViewB setImage:[UIImage imageNamed:@"navbar_6_image"]];
    [self.view addSubview:_imageViewB];
    UIButton *btn = [UIButton buttonWithType:0];
    [btn setFrame:CGRectMake(100, 0, 100, 200)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(POSTImage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)click{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    pickerController.delegate = self;
    [pickerController setEditing:NO];
    
    NSArray *sourceTypes = [UIImagePickerController availableMediaTypesForSourceType:pickerController.sourceType];
    NSString *imageTypeStr = nil;
    for (NSString *str in sourceTypes) {
        if ([str hasSuffix:@"image"]) {
            imageTypeStr = str;
            continue;
        }
    }
    
    pickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    pickerController.mediaTypes = [NSArray arrayWithObjects:imageTypeStr, nil];
    
    [self presentViewController:pickerController animated:YES completion:nil];
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
//    [picker dismissViewControllerAnimated:YES completion:nil];
    UIImage *attachIcon = nil;
    NSString *mediaType = [info objectForKey:UIImagePickerControllerMediaType];
    if ([mediaType hasSuffix:@"image"]) {
        attachIcon = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
        [self.imageViewB setImage:attachIcon];
        [self POSTImage];
    }
}


/**
 *  参数：action；值：upload_file；
 */

- (void)POSTImage{

//    NSData *data = UIImageJPEGRepresentation(self.imageViewB.image, 0.5);
//    NSDictionary *parameters = @{@"action":@"upload_file",@"Filedata":data};
//    
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    [manager POST:@"http://upimg.myzx.cn/index.php?" parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"JSON: %@", responseObject);
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
    
    
//    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] multipartFormRequestWithMethod:@"POST" URLString:@"http://upimg.myzx.cn/index.php?action=upload_file" parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {

//        NSData *data = UIImageJPEGRepresentation(self.imageViewB.image, 0.5);
//        [formData appendPartWithFileData:data name:@"Filedata" fileName:@"upload_file" mimeType:@"image/png"];
//        
//    } error:nil];
//
//
//    AFHTTPRequestOperation *req = [[AFHTTPRequestOperation alloc] initWithRequest:request];
//    //    req.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"multipart/form-data"];
//    [req setUploadProgressBlock:^(NSUInteger bytesWritten, long long totalBytesWritten, long long totalBytesExpectedToWrite) {
//        NSLog(@"%d-------%lld-------%lld",bytesWritten,totalBytesWritten,totalBytesExpectedToWrite);
//    }];
//    
//    [req setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSError *error = nil;
//        NSDictionary *value = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:&error];
//        NSLog(@"222222222>>>>==%@---%@",operation,[value objectForKey:@"msg"]);
//        
//        
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"233333>>>>%@",error);
//    }];
    
    
    
//    [req start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
