//
//  LBLHomeTableVC.m
//  LBL_SinaWeibo
//
//  Created by apple on 15/10/1.
//  Copyright © 2015年 LBL. All rights reserved.
//

#import "LBLHomeTableVC.h"
#import "UIBarButtonItem+Extension.h"
#import "LBLTemp2Ctrl.h"
#import "LBLHomeTitleButton.h"

@interface LBLHomeTableVC ()

@property (nonatomic,strong) LBLHomeTitleButton *titleButton;
@end

@implementation LBLHomeTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNav];
    
    
}

//设置导航栏按钮
- (void)setNav{
    //设置导航栏左右按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"navigationbar_friendsearch" higtImage:@"navigationbar_friendsearch_highlighted" target:self action:@selector(friendsearch:)];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"navigationbar_pop" higtImage:@"navigationbar_pop_highlighted" target:self action:@selector(pop:)];
    
    LBLHomeTitleButton *titleButton = [[LBLHomeTitleButton alloc] init];
    [titleButton setTitle:@"首页" forState:UIControlStateNormal];
    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
    
    //titleButton.size = CGSizeMake(100, 50);
    [titleButton sizeToFit];
    
    self.navigationItem.titleView = titleButton;

    self.titleButton = titleButton;
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.titleButton setTitle:@"呜呜呜" forState:UIControlStateNormal];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/


#pragma mark - 导航栏按钮点击调用方法
- (void)friendsearch:(UIButton *)btn
{
    NSLog(@"%s",__func__);
    LBLTemp2Ctrl *ctrl = [[LBLTemp2Ctrl alloc] init];
    
    [self.navigationController pushViewController:ctrl animated:YES];
    
    
}

- (void)pop:(UIButton *)btn
{
    NSLog(@"%s",__func__);

}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
