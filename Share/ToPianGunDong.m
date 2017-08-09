//
//  ToPianGunDong.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/28.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "ToPianGunDong.h"
//屏幕宽度
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
//图片高度
#define IMG_HEIGHT 180
//要显示的图片总数
#define MAX_SIZE 7

@interface ToPianGunDong ()<UIScrollViewDelegate>
//滚动视图
@property (strong, nonatomic) UIScrollView *loopScrollView;
//指示器
@property (strong, nonatomic) UIPageControl *pageIndicator;
//要展示的图片数组
@property(strong, nonatomic) NSMutableArray *imgArray;
@end

@implementation ToPianGunDong

//懒加载数组
//-(NSMutableArray *)imgArray
//{
//    if(_imgArray == nil)
//    {
//        _imgArray = [NSMutableArray array];
//        //在要展示的5张图片的前后各加一张图片，第一张前面加第五张，第五张后面加第一张
//        
//        
//        UIImage *image = [UIImage imageNamed:@"img_05.JPG"];
//        if (image) {
//            [_imgArray addObject:image];
//        }
//        for (int i = 1; i< MAX_SIZE - 1; i++) {
//            NSString *imgName = [[NSString alloc]initWithFormat:@"img_0%d.JPG", i];
//            if (imgName) {
//                [_imgArray addObject:[UIImage imageNamed:imgName]];
//            }
//        }
//       UIImage *image2 = [UIImage imageNamed:@"img_01.JPG"];
//        if (image2) {
//            [_imgArray addObject:image2];
//        }
//    }
//    NSLog(@"---------->%lu",(unsigned long)_imgArray.count);
//    return _imgArray;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(_imgArray == nil)
    {
        _imgArray = [NSMutableArray array];
        //在要展示的5张图片的前后各加一张图片，第一张前面加第五张，第五张后面加第一张
        
        
        UIImage *image = [UIImage imageNamed:@"img_05.JPG"];
        if (image) {
            [_imgArray addObject:image];
        }
        for (int i = 1; i< MAX_SIZE - 1; i++) {
            NSString *imgName = [[NSString alloc]initWithFormat:@"img_0%d.JPG", i];
            if (imgName) {
                [_imgArray addObject:[UIImage imageNamed:imgName]];
            }
        }
        UIImage *image2 = [UIImage imageNamed:@"img_01.JPG"];
        if (image2) {
            [_imgArray addObject:image2];
        }
    }
    NSLog(@"---------->%lu",(unsigned long)_imgArray.count);
    self.view.backgroundColor=[UIColor whiteColor];
    [self setupScrollView];
    [self setupPageControl];
    
}


/**
 * 创建UIScrollView并设置其属性
 */
-(void)setupScrollView
{
    UIScrollView *sc = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH,IMG_HEIGHT)];
    sc.backgroundColor = [UIColor yellowColor];
    //创建UIImageView并添加到UIScrollView中
    for (int i = 0; i< MAX_SIZE; i++) {
        UIImageView *img = [[UIImageView alloc]initWithImage:[self.imgArray objectAtIndex:i]];
        img.backgroundColor = [UIColor blueColor];
        img.frame = CGRectMake(SCREEN_WIDTH * i, 0, SCREEN_WIDTH, IMG_HEIGHT);
        [sc addSubview:img];
    }
    
    //设置UIScrollView的属性
    sc.contentSize = CGSizeMake(SCREEN_WIDTH * self.imgArray.count, IMG_HEIGHT);
    sc.showsHorizontalScrollIndicator = NO;
    sc.pagingEnabled = YES;
    //刚开始应该滚动到第二张显示，因为第一张其实是最后一张图片
    [sc setContentOffset:CGPointMake(SCREEN_WIDTH, 0) animated:NO];
    
    
    //设置代理并添加到当前view中
    sc.delegate = self;
    [self.view addSubview:sc];
    
    self.loopScrollView = sc;
}


/**
 * 创建UIPageControl并设置其属性
 */
-(void)setupPageControl
{
    //注意frame，这样设置可以居中显示
    UIPageControl *pc = [[UIPageControl alloc]initWithFrame:CGRectMake(self.view.center.x - 50, CGRectGetMaxY(self.loopScrollView.frame) - 25 , 100, 25)];
    //设置UIPageControl的属性并添加到当前view中
    pc.numberOfPages = MAX_SIZE - 2;
    pc.currentPage = 0;
    pc.pageIndicatorTintColor = [UIColor redColor];
    [self.view addSubview:pc];
    
    self.pageIndicator = pc;
    
}

//UIScrollView的代理方法，在该方法中改变UIPageControl并且处理边缘滚动
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //获取当前UIScrollView的位置
    CGPoint offset = [scrollView contentOffset];
    //算出滚动到第几页
    int currentPage = offset.x/SCREEN_WIDTH;
    //设置UIPageControl
    self.pageIndicator.currentPage = currentPage - 1;
    
    NSLog(@"========>%d",currentPage);
    //对最后一张和第一张要进行特殊处理
    //1、如果是第一张
    if (currentPage == 0) {
        //下面两个方法任选其一都可以达到效果，但是注意动画一定要设置为NO，不然会有视觉会有辣眼睛的感觉
        //方法1
        [self.loopScrollView setContentOffset:CGPointMake(SCREEN_WIDTH * (MAX_SIZE-2), 0) animated:NO];
        //方法2，该方法要求设置contentSize时，任一方向就算不滚动也不能为0，否则无效
        //[self.loopScrollView scrollRectToVisible:CGRectMake(SCREEN_WIDTH * (MAX_SIZE-2), 0, SCREEN_WIDTH, IMG_HEIGHT) animated:NO];
        self.pageIndicator.currentPage = MAX_SIZE - 2;
    }
    
    //2、如果是最后一张
    else if(currentPage == MAX_SIZE - 1) {
        [self.loopScrollView setContentOffset:CGPointMake(SCREEN_WIDTH, 0) animated:NO];
        //[self.loopScrollView scrollRectToVisible:CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, IMG_HEIGHT) animated:NO];
        self.pageIndicator.currentPage = 0;
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
